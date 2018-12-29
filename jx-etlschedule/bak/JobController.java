package io.dfjx.modules.etl.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.dfjx.common.utils.PageUtils;
import io.dfjx.common.utils.R;
import io.dfjx.common.validator.ValidatorUtils;
import io.dfjx.modules.etl.entity.JobEntity;
import io.dfjx.modules.etl.entity.JobSourceEntity;
import io.dfjx.modules.etl.entity.JobStepEntity;
import io.dfjx.modules.etl.service.JobService;
import io.dfjx.modules.etl.service.JobStatusTypeService;
import io.dfjx.modules.etl.service.JobStepService;
import io.dfjx.modules.etl.util.CreateFileUtil;
import io.dfjx.modules.etl.vo.EtlJobStatusTypeVO;



/**
 * 
 *
 * @author lwq
 * @email 404461275@qq.com
 * @date 2018-07-24 15:17:47
 */
@RestController
@RequestMapping("etl/job")
public class JobController {
	@Autowired
	private JobService jobService;
	@Autowired
	private JobStepService jobStepService;

	@Autowired
	private JobStatusTypeService jobStatusTypeService;

	/**
	 * 列表
	 */
	@RequestMapping("/list")
	@RequiresPermissions("etl:job:list")
	public R list(@RequestParam Map<String, Object> params) {
		System.out.println("list--params================" + params.toString());
		PageUtils page;
		if (params.containsKey("reqDenpsType") && params.get("reqDenpsType").equals("true")) {
			System.out.println("进入作业依赖查询方法");
			page = jobService.getDependencyJobs(params);
		} else {
			System.out.println("进入作业-----------------查询方法");
			page = jobService.queryPage(params);
		}

		return R.ok().put("page", page);
	}



	/**
	 * 信息
	 */
	@RequestMapping("/info/{etlSystem}")
	@RequiresPermissions("etl:job:info")
	public R info(@PathVariable("etlSystem") String etlSystem) {
		JobEntity job = jobService.selectById(etlSystem);
		//加载触发作业
		Map<String,Object> map=new HashMap<String,Object>();	
		map.put("ETL_System", job.getEtlSystem());
		map.put("ETL_Job", job.getEtlJob());
		JobStepEntity jse= new JobStepEntity();
		List<JobStepEntity>  listJobs=jobStepService.selectByMap(map);
		if(listJobs.size()>0){
			jse=listJobs.get(0);
			job.setPublicScript(jse.getScriptid());
		}
		;
		for(int i=0;i<page.getRecords().size();i++){
			if(page.getRecords().get(i).getEtlJob().equals(jse.getEtlJob()) && page.getRecords().get(i).getEtlSystem().equals(jse.getEtlSystem()) ){
				page.getRecords().get(i).setIsTriggerJob("1");
				break;
			}
		}
		if (StringUtils.isNotBlank(job.getRunningscript())) {
			String start="";
			String end="";
			int ind=-1;
			String runScript=job.getRunningscript();
			ind=runScript.lastIndexOf("0100.");
			if(ind>=0){
				start=runScript.substring(0, ind);
				end=runScript.substring(ind+4, runScript.length());
				job.setPublicScript(start+end);
			}
		}

		return R.ok().put("job", job);
	}

	/**
	 * 保存
	 */
	@RequestMapping("/save")
	@RequiresPermissions("etl:job:save")
	public R save(@RequestBody JobEntity job) {
		jobService.insert(job);

		return R.ok();
	}

	/**
	 * 修改
	 */
	@RequestMapping("/update")
	@RequiresPermissions("etl:job:update")
	public R update(@RequestBody JobEntity job) {
		ValidatorUtils.validateEntity(job);
		jobService.updateAllColumnById(job);//全部更新

		return R.ok();
	}

	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	@RequiresPermissions("etl:job:delete")
	public R delete(@RequestBody String[] etlSystems) {
		jobService.deleteBatchIds(Arrays.asList(etlSystems));

		return R.ok();
	}

	/**
	 * 重跑作业
	 *
	 * @RequestParam
	 */
	@RequestMapping("/rerun")
	@RequiresPermissions("etl:job:update")
	public R rerun(@RequestParam Map<String, Object> params) {

		System.out.println("rerun-params==========" + params.toString());
		if (params.containsKey("etlSystem") == false ||
				params.containsKey("etlJob") == false ||
				params.containsKey("lastTxDate") == false) {
			return R.error("作业重跑参数有空值");
		}
		String etlSystem = params.get("etlSystem").toString();
		String etlJob = params.get("etlJob").toString();
		String lastTxDate = params.get("lastTxDate").toString();
		//更新作业状态为Ready
		jobService.updateJobStatus(etlSystem, etlJob, lastTxDate);

		//创建作业触发空文件
		String jobNameUpper = etlJob.toUpperCase();
		String[] lastTxDateArray = lastTxDate.split("-");
		String lastTxDate_new = lastTxDateArray[0] + lastTxDateArray[1] + lastTxDateArray[2];
		//            String filename = "/home/etl/ETLAuto/DATA/receive/dir."+ jobNameUpper+lastTxDate_new;
		String filename = "D://dir." + jobNameUpper + lastTxDate_new;

		if (CreateFileUtil.createFile(filename)) {
			return R.ok("作业成功吊起重跑");
		}
		return R.error("重跑作业【" + etlSystem + "-" + etlJob + "-" + lastTxDate_new + "】失败");
	}


	/**
	 * 获取所有的作业状态
	 */
	@RequestMapping("/getstatus")
	@RequiresPermissions("etl:job:list")
	public R getstatus() {
		List<EtlJobStatusTypeVO> allstatus = jobStatusTypeService.getStatusMap();
		return R.ok().put("allstatus",allstatus);
	}
}