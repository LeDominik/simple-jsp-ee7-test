package com.test;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;

import java.io.Serializable;
import java.util.List;

/**
 * This is just a caching mirror to our ApplicationController.
 * We do this to ensure that not multiple database calls are made
 * when rendering the JSP's ;-)
 * 
 * Use with care, it will cache (in the request) whatever is called,
 * so if we get the data for a specific client that one will be cached.
 * (could of course be implemented smarter to also memoize the client)
 */
@Named
@RequestScoped
public class ViewCtrl implements Serializable {
    private static final long serialVersionUID = 1L;

    @Inject AppController app;

    List<User> dummyUsers = null;
    String dummyValue = null;
    String bigHello = null;

    public ViewCtrl() {}

    public List<User> getDummyUsers() {
        if(dummyUsers == null) {
            dummyUsers = app.getDummyUsers();
        }

        return dummyUsers;
    }

    public String getDummyValue() {
        if(dummyValue == null) {
            dummyValue = app.getDummyValue();
        }

        return dummyValue;
    }

    public String bigHello(String name) {
        if(bigHello == null) {
            bigHello = app.bigHello(name);
        }
        return bigHello;
    }
}
