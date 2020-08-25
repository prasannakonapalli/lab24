package co.grandcircus.lab24;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



// co.grandcircus.jdbcintro.dao.RoomRepo;

@Controller
public class PartyController {

	@Autowired
	private PartyRepo dao;
	
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/parties";
	}
	@RequestMapping("/parties")
	public String list(Model model) {
		List<Party> parties;
		parties= dao.findAll();
		model.addAttribute("parties",parties);
		return "home";
}
	
}
