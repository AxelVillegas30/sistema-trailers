package com.sistema.trailers.repositorios;

import com.sistema.trailers.modelo.Genero; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class DataLoader implements CommandLineRunner {

    @Autowired
    private GeneroRepositorio generoRepository;

    @Override
    public void run(String... args) throws Exception {
        if (generoRepository.count() == 0) {
            generoRepository.save(new Genero(1, "Accion"));
            generoRepository.save(new Genero(2, "Terror"));
            generoRepository.save(new Genero(3, "Comedia"));
            generoRepository.save(new Genero(4, "Drama"));
            generoRepository.save(new Genero(5, "Aventura"));
            generoRepository.save(new Genero(6, "Ciencia Ficcion"));
        }
    }
}