package co.grandcircus.lab24;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;

import org.hibernate.type.LocalDateType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
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
		parties = dao.findAll();
		model.addAttribute("parties", parties);
		return "home";
	}

	@PostMapping("/searchname")
	public String searchName(Model model, @RequestParam("Name1") String name,
			@RequestParam("radiobutton") String byDate) {
		if (!name.isEmpty()) {
			List<Party> parties;
			parties = dao.findByNameLike("%" + name + "%");

			// extended

			Date curDate = new Date();
			LocalDate curLocaldate = curDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();

			if (byDate.equalsIgnoreCase("future")) {
				parties = dao.findByNameLike("%" + name + "%");

				// curDate.compareTo(p.getDate())<0

				parties.removeIf(p -> p.getDate().compareTo(curLocaldate) < 0);

			} else if (byDate.equalsIgnoreCase("past")) {
				parties.removeIf(p -> p.getDate().compareTo(curLocaldate) > 0);
			}

			model.addAttribute("parties", parties);

		}
		return "home";
	}

	@RequestMapping("/adminPage")
	public String adminList(Model model) {
		List<Party> parties;
		parties = dao.findAll(Sort.by(Direction.DESC, "date"));
		model.addAttribute("parties", parties);
		return "adminPage";
	}

	@RequestMapping("/addAdmin")
	public String showAddParty() {

		return "addAdmin";
	}

	@PostMapping("/addAdmin")
	public String addParty(Party party) {

		dao.save(party);

		return "redirect:/adminPage";
	}

	@RequestMapping("/editAdmin")
	//public String showEditParty(Party party, Model model) {
	public String showEditParty(@RequestParam("id") Long partyId, Model model) {
		Party party = dao.findById(partyId).get();
		model.addAttribute("party", party);
		return "editAdmin";
	}

	@PostMapping("/editAdmin")
	public String EditParty(@RequestParam("id") long partyId, @RequestParam("name") String name,
			@RequestParam("date") String Sdate) { // ,@RequestParam("id") long partyId
		// Party party,
		LocalDate localDate = LocalDate.parse(Sdate);
		Party partyOption = dao.findById(partyId).get();
		System.out.println(partyOption);
		partyOption.setDate(localDate);
		partyOption.setName(name);
		dao.save(partyOption);
		// dao.save(party);
		return "redirect:/adminPage";
	}

	@RequestMapping("/deleteAdmin")
	public String deleteParty(@RequestParam("id") Long partyId) {

		dao.deleteById(partyId);
		return "redirect:/adminPage";
	}

}
