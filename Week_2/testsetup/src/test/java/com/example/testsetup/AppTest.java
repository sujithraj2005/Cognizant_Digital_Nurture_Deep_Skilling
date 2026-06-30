package com.example.testsetup;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class AppTest {
    
  @Test
  public void basicTestCase() {
    assertTrue(true,"This is Basic test case which is always true");
  }
  
  @Test 
  public void addTest() {
	  assertEquals(5,3+2);
  }
}
