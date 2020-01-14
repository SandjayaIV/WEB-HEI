package hei.devweb.cityexplorer.controllers;

import hei.devweb.cityexplorer.pojos.City;
import hei.devweb.cityexplorer.pojos.CityListDto;
import hei.devweb.cityexplorer.pojos.Continent;
import hei.devweb.cityexplorer.services.CityService;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;
@Path("/continents/{continent}/countries/{codeCountry}/cities")
public class CityController {
    private CityService cityService = CityService.getInstance();
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<CityListDto> listByCountry(@PathParam("codeCountry") String codeCountry){
        return cityService.listByCountryCode(codeCountry);
    }

   @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public City getCity(@QueryParam("id") Integer id){
        return cityService.getById(id);
        }
    @POST
    @Path("/{cityId}/{activity}")
    @Produces(MediaType.APPLICATION_JSON)
        public void addActivity(@PathParam("cityId") Integer cityId,
                                @PathParam("activity") String activity){
        cityService.addActivity(cityId,activity);
        }

}
