package com.huamu668.demo;

import com.huamu668.demo.mapper.TreeMapper;
import com.huamu668.demo.service.ITreeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.File;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationTests {

@Autowired
private TreeMapper   treeMapper;
@Autowired
private ITreeService treeService;
	@Test
	public void imageFormat() {
		/**
		 * todo 处理图片格式
		 */
		File file = new File("E:/image");
		for (File file1 : file.listFiles()) {
			System.out.println(file1.getName());
		}
	}

	@Test
	public void testMapper() {
		System.out.println(treeService.getAll());
	}
}
