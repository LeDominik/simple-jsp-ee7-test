package com.test;

import java.io.Serializable;

public class User implements Serializable {
  private static final long serialVersionUID = 1L;

  int id;
  String name;

  public User() {}

  public User(int id, String name) {
    this.id = id;
    this.name = name;
  }

  /**
   * @return the id
   */
  public int getId() {
    return id;
  }

  /**
   * @return the name
   */
  public String getName() {
    return name;
  }
}
