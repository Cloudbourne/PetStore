package org.agoncal.application.petstore.view;

import javax.faces.bean.RequestScoped;
import javax.inject.Named;
import org.agoncal.application.petstore.util.Loggable;

@Named
@RequestScoped
@Loggable
@CatchException
public class EnvVarBean extends AbstractBean {

    public String getValue(String name) {
        return getValue(name);
    }

    public String getValue(String name, String defaultValue) {
        String value = System.getenv(name);
        return value != null ? value : defaultValue;
    }

}
