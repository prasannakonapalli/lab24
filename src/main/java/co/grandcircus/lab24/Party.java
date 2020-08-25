package co.grandcircus.lab24;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Party {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;
private String name;
private Date date;

public Party() {
	super();
}

public Party(Long id, String name, Date date) {
	super();
	this.id = id;
	this.name = name;
	this.date = date;
}

public Long getId() {
	return id;
}

public void setId(Long id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public Date getDate() {
	return date;
}

public void setDate(Date date) {
	this.date = date;
}

@Override
public String toString() {
	return "Party [id=" + id + ", name=" + name + ", date=" + date + "]";
}



}
