package br.com.papait.bruno.springdockerterraformaws.service.interfaces;

import br.com.papait.bruno.springdockerterraformaws.entity.Contact;

import java.util.List;
import java.util.Optional;

public interface ContactbookService {
  Contact save(Contact contact);

  List<Contact> getAll();

  Optional<Contact> getByName(String name);
}
