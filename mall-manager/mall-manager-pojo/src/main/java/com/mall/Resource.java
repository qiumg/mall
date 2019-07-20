package com.mall;

public class Resource {
    private  int  id;
    private  String uri;
    private  String description;    //权限描述
    private  String privilege_id;   //权限id

    @Override
    public String toString(){
        return "Resource{"+ "id="+id+'\''+
                ",uri="+uri+'\''+
                ",description="+description+'\''+
                ",privilege_id="+privilege_id+'\''+
                "}";
    }

    public int  getId() {
        return id;
    }

    public void setId(int  id) {
        this.id = id;
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrivilege_id() {
        return privilege_id;
    }

    public void setPrivilege_id(String privilege_id) {
        this.privilege_id = privilege_id;
    }
}

