package co.grandcircus.lab24;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PartyOptionRepo  extends JpaRepository<PartyOption, Long>{
	//List<PartyOption> findAll(); 
	//Optional<PartyOption> findById(Long id); 
	//Optional<void> save(PartyOption p);
	//List<PartyOption> findAllIdOrderByVoteDesc(Long id); // Ascending is the default


}
