package co.grandcircus.lab24;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class Rsvp {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;
private String attendee;
private String comment;
@JoinColumn(name="party_id")// default
@ManyToOne
private Party party;

public Rsvp() {
	super();
}


public Party getParty() {
	return party;
}


public void setParty(Party party) {
	this.party = party;
}


public Long getId() {
	return id;
}

public void setId(Long id) {
	this.id = id;
}

public String getAttendee() {
	return attendee;
}

public void setAttendee(String attendee) {
	this.attendee = attendee;
}

public String getComment() {
	return comment;
}

public void setComment(String comment) {
	this.comment = comment;
}


}
