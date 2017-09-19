package com.test;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Named;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/**
 * Main entry point to the functionality -- all the calls to 
 * get data that ultimately hit the DB come from here.
 * 
 * Warning: This is @ApplicationScoped, so effectively a 
 * massive Singleton! DO NOT PUT ANY VARIABLES here or they will 
 * be shared with every request & session. Functional methods ONLY.
 */
@Named
@ApplicationScoped
public class AppController implements Serializable {
    private static final long serialVersionUID = 1L;
    
    public AppController() {}
    private final static List<User> dummyUsers = Arrays.asList(
        new User(0, "user 0"),
        new User(1, "user 1"),
        new User(2, "user 2"));


    /** In real life, this should then dispatch to a database call, so
     * the function needs a few parameters.
     */
    public List<User> getDummyUsers() {
        return dummyUsers;
    }

    /** In real life, this should then dispatch to a database call */
    public String getDummyValue() {
        return "Dummy Value";
    }

    /** In real life, this should then dispatch to a database call, and illustrates how
     * to pass in a value and then cache the stuff for the JSP rendering within the 
     * ViewCtrl. So the functions on the viewCtrl can be called AS OFTEN as wanted per 
     * rendering ;-)
     */
    public String bigHello(String name) {
        return "HELLO " + name.toUpperCase();
    }
}
