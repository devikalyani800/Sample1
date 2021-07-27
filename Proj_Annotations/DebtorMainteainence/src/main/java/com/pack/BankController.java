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

import com.pack.debtor.dao.BankDao;
import com.pack.debtor.model.Bank;


@Controller
public class BankController {
	
	@Autowired
	BankDao bankDao;
	
	@RequestMapping("/index2")
	public String add1(Model m) {
		m.addAttribute("bank", new Bank());
		return "index2";
	}


	@RequestMapping("/addBankForm")
	public String add(Model m) {
		m.addAttribute("bank", new Bank());
		return "bankFrom";
	}

	@RequestMapping(value = "/addBankForm", method = RequestMethod.POST)
	public String addStudent(Bank bank) {
		int res = bankDao.insert(bank);
		if (res >= 1)
			return "redirect:/viewForm1";
		else
			return "bank-error";

	}

	
	@RequestMapping("/viewForm1")
	public String viewemp(Model m) {
		List<Bank> list = bankDao.viewAll();
		m.addAttribute("list", list);
		return "view1";
	}

	@RequestMapping("/editBan")
	public String edit(@RequestParam("did") int did, Model m) {

		Bank bank = bankDao.getEmpById(did);
		m.addAttribute("editBankForm", bank);

		System.out.println("did" + did);

		return "bankedit";
	}

	@RequestMapping("/editBank")
	public String modify(Bank bank) {
		int res = bankDao.modify(bank);
		if (res >= 1)
			return "redirect:/viewForm1";
		else
			return "bank-error";

	}

	@RequestMapping(value = "/deleteBank/{did}", method = RequestMethod.GET)
	public String delete(@PathVariable int did) {
		int res = bankDao.delete(did);
		if (res >= 1)
			return "redirect:/viewForm1";
		else
			return "bank-error";

	}

}



