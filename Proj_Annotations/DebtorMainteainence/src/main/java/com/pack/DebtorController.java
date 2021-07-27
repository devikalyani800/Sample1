package com.pack;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pack.debtor.dao.DebtorDao;
import com.pack.debtor.model.Debtor;

@Controller
public class DebtorController {

	@Autowired
	DebtorDao debtorDao;
	
	@RequestMapping("/")
	public String add1(Model m) {
		m.addAttribute("debtor", new Debtor());
		return "index1";
	}


	@RequestMapping("/addDebtorForm")
	public String add(Model m) {
		m.addAttribute("debtor", new Debtor());
		return "userForm";
	}

	@RequestMapping(value = "/addDebtor", method = RequestMethod.POST)
	public String addStudent(Debtor debtor) {
		int res = debtorDao.insert(debtor);
		if (res >= 1)
			return "redirect:/viewForm";
		else
			return "adduser-error";

	}

	
	

	@RequestMapping("/viewForm")
	public String viewemp(Model m) {
		List<Debtor> list = debtorDao.viewAll();
		m.addAttribute("list", list);
		return "view";
	}

	@RequestMapping("/editDeb")
	public String edit(@RequestParam("did") int did, Model m) {

		Debtor debtor = debtorDao.getEmpById(did);
		m.addAttribute("editDebtorForm", debtor);

		System.out.println("did" + did);

		return "editAction";
	}

	@RequestMapping("/editDebtor")
	public String modify(Debtor debtor) {
		int res = debtorDao.modify(debtor);
		if (res >= 1)
			return "redirect:/viewForm";
		else
			return "adduser-error";

	}

	@RequestMapping(value = "/deleteDebtor/{did}", method = RequestMethod.GET)
	public String delete(@PathVariable int did) {
		int res = debtorDao.delete(did);
		if (res >= 1)
			return "redirect:/viewForm";
		else
			return "adduser-error";

	}

}
