package com.example;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@SpringBootApplication
@MapperScan("com.example.mapper")
public class JojomovieApplication {

	public static void main(String[] args) {
		// http://localhost:8087/  
		SpringApplication.run(JojomovieApplication.class, args);
	}

}
