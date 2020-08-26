package co.grandcircus.lab24;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface PartyRepo extends JpaRepository<Party, Long>{
	// JPQL
		//List<Party> findByAll();
		// JPQL
		
		List<Party> findAll();
		List<Party> findAllByName(String name);
		List<Party> findByNameLike(String name);

		

}
