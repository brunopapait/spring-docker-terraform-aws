package br.com.papait.bruno.springdockerterraformaws;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients(basePackages = "br.com.papait.bruno.springdockerterraformaws.service.client")
public class SpringDockerTerraformAwsApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringDockerTerraformAwsApplication.class, args);
	}

}
