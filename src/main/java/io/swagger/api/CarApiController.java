package io.swagger.api;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.swagger.dao.CarDao;
import io.swagger.model.Car;
import io.swagger.model.Requirements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2018-10-25T10:59:21.087Z")

@Controller
public class CarApiController implements CarApi {

    private static final Logger log = LoggerFactory.getLogger(CarApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @Autowired
    public CarApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    @Override
    public ResponseEntity<List<Car>> getCars(HttpServletRequest request, HttpServletResponse response, HttpEntity<String> httpEntity) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            Requirements requirements = getRequirement(httpEntity);
            return new ResponseEntity<List<Car>>(CarDao.getCarsWithAttributes(requirements), HttpStatus.OK);
        }
        return null;
    }

    @Override
    public ResponseEntity<Integer> getNumberOfCars(HttpServletRequest request, HttpServletResponse response, HttpEntity<String> httpEntity){
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            ObjectMapper mapper = new ObjectMapper();
            Requirements requirements = getRequirement(httpEntity);

            return new ResponseEntity<Integer>(CarDao.getCarsWithAttributes(requirements).size(), HttpStatus.OK);
        }
        return null;
    }

    @Override
    public ResponseEntity<HashMap<String, HashMap<String, Object>>> getNumberOfRequirements(HttpServletRequest request, HttpServletResponse response, HttpEntity<String> httpEntity) {

        HashMap<String, HashMap<String, Integer>> remainingCars = new HashMap();
        Requirements requirements = getRequirement(httpEntity);
        for(String attribute : requirements.getCriteres().keySet()){
            if(attribute.equals("origine")){
                remainingCars.put("zone", CarDao.getRemainingCarsForAttribute("zone", requirements));
                remainingCars.put("pays", CarDao.getRemainingCarsForAttribute("pays", requirements));
                continue;
            }
            if(attribute.equals("prix")) continue;
            remainingCars.put(attribute, CarDao.getRemainingCarsForAttribute(attribute, requirements));
        }

        System.out.println(remainingCars);

        return new ResponseEntity(remainingCars, HttpStatus.OK);
    }


    private Requirements getRequirement(HttpEntity<String> httpEntity){
        ObjectMapper mapper = new ObjectMapper();
        Requirements requirements = null;
        try {
            requirements = new Requirements((HashMap<String, Object[]>) mapper.readValue(httpEntity.getBody(), new TypeReference<HashMap<String, Object[]>>() {}));
            //System.out.println(requirements);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return requirements;
    }
}
