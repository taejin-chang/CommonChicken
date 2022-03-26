package com.chicken.controller;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class DataSourceTest {
	public static final Logger logger=LoggerFactory.getLogger(DataSourceTest.class);

	@Autowired
	DataSource dataSource;
	
	@Test
	public void testDataSource() throws SQLException {
		logger.info("DataSource = "+dataSource);
		logger.info("Connection = "+dataSource.getConnection());
	}
	
	
}
