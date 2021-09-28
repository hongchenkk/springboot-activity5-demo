package com.godink.springboot.activity5.demo;

import org.activiti.spring.boot.SecurityAutoConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(exclude = SecurityAutoConfiguration.class)
public class SpringbootActivity5DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootActivity5DemoApplication.class, args);
	}

}
