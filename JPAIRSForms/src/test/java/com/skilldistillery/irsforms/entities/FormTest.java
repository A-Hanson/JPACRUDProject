package com.skilldistillery.irsforms.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class FormTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Form form;
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("IRSFormPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		form = em.find(Form.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		form = null;
	}

	@Test
	@DisplayName("Test Form entity mapping")
	void test_1() {
		assertNotNull(form);
		assertEquals("Form Test-1", form.getFormNumber());
	}

}
