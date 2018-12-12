package com.test;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import com.patrickgrimard.HelloWorld;

public class WidgetControllerTest {
	
	@Test
	public void testapplication() {
		
		HelloWorld  helloWorld = new HelloWorld();
		
		assertEquals("Hello World",helloWorld.hello());
		
		
	}

}
