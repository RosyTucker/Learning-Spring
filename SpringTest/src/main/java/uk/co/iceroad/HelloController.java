package uk.co.iceroad;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HelloController {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello world!");
        model.addAttribute("user", new User());
        return "hello";
	}

    @RequestMapping(method = RequestMethod.POST)
    public String submitForm(@ModelAttribute User user, ModelMap model) {
        model.addAttribute("user", user);
        model.addAttribute("message", "Successfully saved person: " + user.getFirstName() + "  " + user.getSurname());
        return "hello";
    }
}