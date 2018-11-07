package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.HashMap;

public class Requirements {
    @JsonProperty("json")
    private HashMap<String, Object[]> criteres;

    public Requirements(HashMap<String, Object[]> criteres) {
        this.criteres = criteres;
    }


    public HashMap<String, Object[]> getCriteres() {
        return criteres;
    }

    public void setCriteres(HashMap<String, Object[]> criteres) {
        this.criteres = criteres;
    }

    @Override
    public String toString() {
        StringBuilder s = new StringBuilder();
        for(String key : this.criteres.keySet()){
            s.append(key);
            s.append(" : ");
            for(Object o : this.criteres.get(key)){
                s.append(o.toString());
                s.append(", ");
            }
            s.append("\n");
        }
        return s.toString();
    }
}
