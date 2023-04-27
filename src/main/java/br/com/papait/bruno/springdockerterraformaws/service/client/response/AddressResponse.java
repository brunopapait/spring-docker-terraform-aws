package br.com.papait.bruno.springdockerterraformaws.service.client.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@RequiredArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class AddressResponse {

  private String cep;
  private String logradouro;
  private String bairro;
  @JsonProperty(value = "localidade")
  private String cidade;
  @JsonProperty(value = "uf")
  private String estado;
}
