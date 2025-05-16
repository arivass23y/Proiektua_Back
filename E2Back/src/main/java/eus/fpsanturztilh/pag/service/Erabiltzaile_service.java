package eus.fpsanturztilh.pag.service;

import java.util.*;

import eus.fpsanturztilh.pag.model.*;

public interface Erabiltzaile_service {
	    public Optional<Erabiltzaile> findByUsername(String username);
	    public boolean authenticate(String username, String rawPassword);
    
}
