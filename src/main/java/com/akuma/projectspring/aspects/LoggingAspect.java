package com.akuma.projectspring.aspects;

import org.apache.log4j.Logger;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class LoggingAspect {
/*	private Logger logger = Logger.getLogger(getClass().getName());
	
	*//**
	 * @Before - invoke this method before the destination is called
	 * needs aspectj expression language
	 * Star(*) inside the argument means one argument and (..) means any number of argument
	 *//*
	@Before("execution(void com.akuma.projectspring..*.set*(..))")
	public void logBefore(){
		logger.info("Setters Called");
	}*/
}
