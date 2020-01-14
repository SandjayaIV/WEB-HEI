package hei.devweb.cities.controllers;

import hei.devweb.cities.pojos.City;
import hei.devweb.cities.pojos.CitySortable;
import hei.devweb.cities.pojos.Department;
import hei.devweb.cities.services.CityService;

import javax.print.attribute.standard.Media;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import java.util.List;

@Path("/cities")
public class CityController {

    private CityService cityService = CityService.getInstance();

    @Produces(MediaType.APPLICATION_JSON)
    @GET
    public List<City> listCities(@QueryParam("page") Integer pageNumber,
                                 @QueryParam("department") String departmentNumber,
                                 @QueryParam("sort") CitySortable sort) {
        return cityService.list(pageNumber,departmentNumber,sort);

    }

    @Produces(MediaType.APPLICATION_JSON)
    @GET
    @Path("/count")
    public Long countCities(@QueryParam("department") String departmentNumber) {
        return cityService.count(departmentNumber);
    }
    @Path("/{cityId}")
    @DELETE
    public void deleteCity(@PathParam("cityId") String cityCode) {
        cityService.deleteCity(cityCode);
    }

    @PATCH
    @Path("{cityId}")
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    public void updateCity(
            @PathParam("cityId") String cityCode,
            @FormParam("name") String name,
            @FormParam("postalCode") String postalCode,
            @FormParam("departement") String departmentCode
            ){
        Department department = Department.fromNumber(departmentCode);
        City city = new City(cityCode,name,postalCode,department);
        cityService.updateCity(city);
    }

}
