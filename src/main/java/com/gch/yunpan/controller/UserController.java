package com.gch.yunpan.controller;

import com.gch.yunpan.entity.User;
import com.gch.yunpan.service.UserService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class UserController {

    @Resource
    private UserService userService;

    @GetMapping("/user/login")
    public String login(String account, String password){
        return userService.login(account, password);
    }

    @GetMapping("/user/find")
    public String findByName(String name){
        return userService.getByName(name);
    }

    @PostMapping("/user/add")
    public String add(User user){
        return userService.insert(user);
    }

    @PostMapping("/user/updatePassword")
    public String updatePassword(User user){
        return userService.updatePassword(user);
    }

    @PostMapping("/user/updateName")
    public String updateName(User user){
        return userService.updateName(user);
    }

    @PostMapping("/user/delete")
    public String delete(int id){
        return userService.delete(id);
    }

}
