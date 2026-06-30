package com.example.aseertions;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;

public class AppTest {
    
  @Test
  public void customTest() {
	  
	assertEquals(10,2*5);
    assertTrue((6+2==8));
    assertFalse(5==3);
    assertNotNull(0);
  }
  
  @BeforeEach
  public void before() {
	  System.out.println("Before Testing");
  }
  
  @AfterEach
  public void after() {
	  System.out.println("After testing");
  }
}
