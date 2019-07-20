package com.mall;

import java.util.HashSet;
import java.util.Set;

public class Role {
    private String id;
    private String name;
    private String description;
//    //一个角色拥有多个用户
//    //private Set<User> users = new HashSet<>();
//
//   // public Set<User> getUsers() {
//        return users;
//    }
//
//    public void setUsers(Set<User> users) {
//        this.users = users;
//    }

    public Role() {
    }

    public Role(String id) {
        this.id = id;
    }

    public Role(String id, String name, String description, Set<Privilege> privileges) {
        this.id = id;
        this.name = name;
        this.description = description;

    }


    @Override
    public String toString() {
        return "Role{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
              //  ", users=" + users +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
