package co.grandcircus.lab24;
  

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RsvpRepo extends JpaRepository<Rsvp, Long>{
	List<Rsvp> findRsvpsByPartyId(Long party_id);
	void deleteRsvpsByPartyId(Long party_id);
}
