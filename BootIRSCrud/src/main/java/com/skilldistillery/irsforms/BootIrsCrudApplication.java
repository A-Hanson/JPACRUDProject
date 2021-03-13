package com.skilldistillery.irsforms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.irsforms")
public class BootIrsCrudApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootIrsCrudApplication.class, args);
	}

}
