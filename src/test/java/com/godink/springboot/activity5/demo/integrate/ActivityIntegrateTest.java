package com.godink.springboot.activity5.demo.integrate;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.DeploymentBuilder;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import lombok.extern.slf4j.Slf4j;

/**
 * 测试activity
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class ActivityIntegrateTest {

	@Autowired
	private RepositoryService repositoryService;
	@Autowired
	private RuntimeService runtimeService;
	@Autowired
	private TaskService taskService;

	/**
	 * test ok
	 * @date 2021-09-28 14:15:03   
	 * @return void
	 */
	@Test
	public void testActivity() {
		// 根据bpmn文件部署流程
		DeploymentBuilder deployBuilder = repositoryService.createDeployment();
		deployBuilder.addClasspathResource("processes/MyProcess.bpmn");
		Deployment deploy = deployBuilder.deploy();
		// 获取流程定义
		ProcessDefinition procDefine = repositoryService.createProcessDefinitionQuery().deploymentId(deploy.getId())
				.singleResult();
		// 启动流程定义，返回流程实例
		ProcessInstance procInst = runtimeService.startProcessInstanceById(procDefine.getId());
		String procInstId = procInst.getId();
		log.info("流程创建成功，当前流程实例id：{}", procInstId);

		// 执行第一次任务
		Task firstTask = taskService.createTaskQuery().processInstanceId(procInstId).singleResult();
		log.info("第一次任务执行前,任务名称：{}", firstTask.getName());
		taskService.complete(firstTask.getId());

		// 执行第二次任务
		Task secondTask = taskService.createTaskQuery().processInstanceId(procInstId).singleResult();
		log.info("第二次任务执行前,任务名称：{}", secondTask.getName());
		taskService.complete(secondTask.getId());

		// 执行第三次任务
		Task thirdTask = taskService.createTaskQuery().processInstanceId(procInstId).singleResult();
		log.info("第三次任务执行前,任务名称：{}", thirdTask.getName());
		taskService.complete(thirdTask.getId());

		// 任务执行完毕，task应为为空
		Task endTask = taskService.createTaskQuery().processInstanceId(procInstId).singleResult();
		if (null == endTask) {
			log.info("task为null, 任务执行完毕：{}", endTask);
		} else {
			log.error("task不为null, 任务执行失败：{}", endTask);
		}
	}
}
