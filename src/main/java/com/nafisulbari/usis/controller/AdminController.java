package com.nafisulbari.usis.controller;

import com.nafisulbari.usis.entity.User;
import com.nafisulbari.usis.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;


@Controller
public class AdminController {


    private UserService userService;

    public AdminController(UserService theUserService) {
        userService = theUserService;
    }

    @GetMapping("/admin/user-portal")
    public String showUsersPage(Model model) {
        model.addAttribute("users", userService.findAllUsers());
        return "/admin/user-portal";
    }


    @GetMapping("/admin/edit-user/{id}")
    public String editUserPage(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", userService.findUserById(id));
        return "/admin/edit-user";
    }


    @GetMapping("/admin/add-user")
    public String addUserPage(User theUser) {

        return "admin/add-user";
    }

    @PostMapping("/admin/add-user-account")
    public String addUserAccount(@Valid User user, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "admin/add-user";
        }

        userService.saveOrUpdateUser(user);

        model.addAttribute("users", userService.findAllUsers());
        return "admin/user-portal";
    }


    @PostMapping("/admin/update-user/{id}")
    public String updateUser(@PathVariable("id") int id, User theUser, BindingResult result, Model model) {

        if (result.hasErrors()) {
            theUser.setId(id);
            return "admin/edit-user";
        }

        userService.saveOrUpdateUser(theUser);

        model.addAttribute("users", userService.findAllUsers());
        return "admin/edit-user";
    }

    @GetMapping("/admin/delete-user/{id}")
    public String deleteUser(@PathVariable("id") int id, User theUser, BindingResult result, Model model) {

        if (result.hasErrors()) {
            throw new RuntimeException("no user found with id :" + id);
        }

        userService.deleteUserById(id);

        model.addAttribute("users", userService.findAllUsers());
        return "admin/user-portal";
    }


}
