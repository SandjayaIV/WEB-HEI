package hei.devweb.cityexplorer.controllers;

import hei.devweb.cityexplorer.daos.CountryDao;
import hei.devweb.cityexplorer.pojos.City;
import hei.devweb.cityexplorer.pojos.CityListDto;
import hei.devweb.cityexplorer.pojos.Continent;
import hei.devweb.cityexplorer.pojos.Country;
import hei.devweb.cityexplorer.services.CityService;
import hei.devweb.cityexplorer.services.CountryService;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.Arrays;
import java.util.List;


@Path("/continents/{continent}/countries")
public class CountryController {
    private CountryService countryService = CountryService.getInstance();
    private CityService cityService = CityService.getInstance();
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Country> listByContinent(@PathParam("continent") String continent){
     Continent continentEnum = Continent.valueOf(continent);
     return countryService.listByContinent(continentEnum);
    }

    @POST
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    public Country addCountry(@PathParam("continent") Continent continent,
                               @FormParam("codeCountry") String codeCountry,
                               @FormParam("nameCountry") String nameCountry
                           )
    {
        return countryService.addCountry(codeCountry,nameCountry,continent);

}


}
