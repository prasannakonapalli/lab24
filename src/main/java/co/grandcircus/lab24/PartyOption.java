package co.grandcircus.lab24;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

//import co.grandcircus.pokemonrelations.entity.Trainer;
@Entity
public class PartyOption {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;
private String name;
private String description;
private Integer votes;

//private Party party;


public PartyOption() {
	super();
}
/*
public PartyOption(Long id, String name, String description, Integer votes) {
	super();
	this.id = id;
	this.name = name;
	this.description = description;
	this.votes = votes;
}*/


public Long getId() {
	return id;
}
/*
public Party getParty() {
	return party;
}


public void setParty(Party party) {
	this.party = party;
}
*/

public void setId(Long id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public Integer getVotes() {
	return votes;
}

public void setVotes(Integer votes) {
	this.votes = votes;
}
/*
@Override
public String toString() {
	return "PartyOption [id=" + id + ", name=" + name + ", description=" + description + ", votes=" + votes + "]";
}
*/


}
