package co.grandcircus.lab24;

import java.util.List;
import java.util.Optional;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.bytebuddy.asm.Advice.OffsetMapping.Sort;

//import co.grandcircus.jdbcintro.entity.Room;
 

@Controller
public class PartyOptionController {
	@Autowired
	private PartyOptionRepo dao1;
	
	
	
	@RequestMapping("/vote")
	public String list(Model model) {
		List<PartyOption> partyOptions;
		partyOptions= dao1.findAll();
		model.addAttribute("partyOptions",partyOptions);
		//model.addAttribute("pObject",pObject);
		return "vote";
}
	@RequestMapping("/incrementvote")
	public String modifylist(@RequestParam("id") Long id) {
//		Optional<PartyOption> optionalPartyOption;
//		optionalPartyOption=dao1.findById(id);
//		PartyOption partyOption=optionalPartyOption.get();
		
		PartyOption partyOption = dao1.findById(id).get();
		int vote=partyOption.getVotes();
		partyOption.setVotes(vote+1);
		dao1.save(partyOption);
		return "redirect:/vote";
		
	}
	
	
	@PostMapping("/add")
	public String submitAdd(PartyOption partyOptionObject) {	
		partyOptionObject.setVotes(0);
		dao1.save(partyOptionObject);
		return "redirect:/vote";
	}
	
	@RequestMapping("/review")
	public String display(Model model) {	
		//List<PartyOption>  = dao1.findAll(Sort.by("vote")); /
		List<PartyOption> partyOptions;
		partyOptions=dao1.findAll(org.springframework.data.domain.Sort.by(Direction.DESC, "votes"));
		partyOptions.removeIf(f->f.getVotes()==0);
		model.addAttribute("partyOptions",partyOptions);
		
		return "/review";
	}
	
}

	

