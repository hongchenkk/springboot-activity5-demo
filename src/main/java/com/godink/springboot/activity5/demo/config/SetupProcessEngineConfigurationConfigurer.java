package com.godink.springboot.activity5.demo.config;

import org.activiti.spring.SpringProcessEngineConfiguration;
import org.activiti.spring.boot.ProcessEngineConfigurationConfigurer;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

/**
 * 解决流程图汉字乱码问题
 * 解决乱码问题
 */
//@Component
@Slf4j
public class SetupProcessEngineConfigurationConfigurer implements ProcessEngineConfigurationConfigurer {

	@Override
	public void configure(SpringProcessEngineConfiguration processEngineConfiguration) {
		processEngineConfiguration.setActivityFontName("宋体");
		processEngineConfiguration.setLabelFontName("宋体");
		processEngineConfiguration.setAnnotationFontName("宋体");
		log.info("SetupProcessEngineConfigurationConfigurer:{}", 
				processEngineConfiguration.getActivityFontName());
	}

}
