package com.example.hibernatelearn;


import com.example.hibernatelearn.models.Auto;
import com.example.hibernatelearn.models.User;
import com.example.hibernatelearn.service.UserService;

public class HibernateLearnApplication {

    public static void main(String[] args) {
        UserService userService = new UserService();
        User user = new User("Masha",26);
        userService.saveUser(user);
        Auto ferrari = new Auto("Ferrari", "red");
        ferrari.setUser(user);
        user.addAuto(ferrari);
        Auto ford = new Auto("Ford", "black");
        ford.setUser(user);
        user.addAuto(ford);
        userService.updateUser(user);
    }

}
