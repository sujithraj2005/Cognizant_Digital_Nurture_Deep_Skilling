package com.example.aaa_pattern;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;

public class AppTest {
    
	private App app;
  @BeforeEach
  public void setUp() {
	  app = new App();
	  System.out.println("Set Up");
  }
  
  @Test
  public void squareTest() {
	  
	  int a = 4;
	  
	  int result = app.square(a);
	  
	  assertEquals(16, result, "Square of 4 is 16");
  }
  
  @AfterEach
  void tearDown() {
	  System.out.println("Teardown");
	  app = null;
  }
}
