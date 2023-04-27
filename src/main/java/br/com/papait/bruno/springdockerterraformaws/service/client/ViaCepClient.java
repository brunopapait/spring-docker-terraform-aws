package br.com.papait.bruno.springdockerterraformaws.service.client;

import br.com.papait.bruno.springdockerterraformaws.service.client.response.AddressResponse;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(name = "viacep", url = "https://viacep.com.br/ws")
public interface ViaCepClient {

  @GetMapping(value = "/{cep}/json")
  AddressResponse getAddress(@PathVariable(value = "cep") String cep);
}
