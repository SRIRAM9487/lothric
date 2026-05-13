package com.discord.shared;

import org.springframework.boot.SpringApplication;

public class TestSharedApplication {

	public static void main(String[] args) {
		SpringApplication.from(SharedApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
