package dev.sgp.service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;

import dev.sgp.entite.VisiteWeb;

public class FrequentationService {

	private List<VisiteWeb> frequentations = new ArrayList<>();
	
	public void sauvegarderFrequentation(VisiteWeb frequentation) {
		frequentations.add(frequentation);
		
	}

	public List<VisiteWeb> listerFrequantations() {
		return frequentations;
	}
	
	public int getId() {
		Optional<Integer> currentId = frequentations
				.stream()
				.map(VisiteWeb::getId)
				.max(Comparator.comparing(Integer::intValue));
		
		if (currentId.isPresent()) {
			return currentId.get() + 1;
		} else {
			return 1;
		}
}
}
