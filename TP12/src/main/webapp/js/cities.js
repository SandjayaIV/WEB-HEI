let currentSelection = {};

let changeTab = function (continent) {
    currentSelection.continent = continent;
    currentSelection.country = undefined;
    currentSelection.city = undefined;

    listCountries(continent);
    let tabElements = document.querySelectorAll("#main-nav li.nav-item");
    for (const tabElement of tabElements) {
        if (tabElement.id === 'tab-' + continent.toLowerCase()) {
            tabElement.getElementsByTagName("a")[0].classList.add("active");
        } else {
            tabElement.getElementsByTagName("a")[0].classList.remove("active");
        }
    }
    document.getElementById("no-country-selected").hidden = false;
    document.getElementById("no-city-selected").hidden = true;
    document.getElementById("no-cities-in-country").hidden = true;
    document.getElementById("city-add-button").hidden = true;
    document.getElementById("cities-list").hidden = true;
    document.getElementById("city-details").hidden = true;
    document.getElementById("city-form").hidden = true;
    document.getElementById("country-add-button").onclick= updatedCountry;
};

let listCountries = function (continent) {
    let countriesRequest = new XMLHttpRequest();
    let url = "api/continents/"+continent+"/countries";
    countriesRequest.open("GET",url,true);
    countriesRequest.responseType = "json";
    countriesRequest.onload = function () {
        let countries = this.response;
        refreshCountriesList(countries);
    };
    countriesRequest.send();
    console.info("Méthode listCountries est implémentée");
};

let addCountry = function(country){
    let countryRequest = new XMLHttpRequest();
    let url = "api/continents/"+currentSelection.continent+"/countries/";

    countryRequest.open("POST",url,true);
    countryRequest.setRequestHeader("content-type", "application/x-www-form-urlencoded");
    // impossible d'écrire countryRequest.requestType = "json" d'où le "undefined"
        countryRequest.onload = function () {
        let newCountry = this.response;
        document.getElementById("countries-list").appendChild(createCountryLink(newCountry));
    };
    countryRequest.send("codeCountry="+country.codeCountry+"&nameCountry="+country.nameCountry);

};
let updatedCountry = function(){
    let country = {
        codeCountry: document.getElementById('country-code-input').value,
        nameCountry: document.getElementById('country-name-input').value
    };
    addCountry(country);
};

let selectCountry = function (country) {
    currentSelection.country = country.code;
    listCities(country.code);

    selectLink("countries-list", "country" + country.code);

    document.getElementById("no-country-selected").hidden = true;
    document.getElementById("no-city-selected").hidden = false;
    document.getElementById("no-cities-in-country").hidden = true;
    document.getElementById("city-add-button").hidden = false;
    document.getElementById("cities-list").hidden = true;
    document.getElementById("city-details").hidden = true;
    document.getElementById("city-form").hidden = true;
};

listCities = function (countryCode) {
    let cityRequest = new XMLHttpRequest();
    let url = "api/continents/"+currentSelection.continent+"/countries/"+countryCode.toLowerCase()+"/cities"

    cityRequest.open("GET",url,true);
    cityRequest.responseType = "json";


    cityRequest.onload = function (){
        let cities = this.response;
        if(cities[0] != null){
            document.getElementById("cities-list").hidden = false;
            document.getElementById("no-cities-in-country").hidden = true;
            refreshCitiesList(cities);
        }else {
            document.getElementById("no-cities-in-country").hidden = false;
            document.getElementById("cities-list").hidden = true;
        }
    }

    cityRequest.send();

};

let getCityDetail = function (cityId) {
    currentSelection.city = cityId;
    selectLink("cities-list", "city" + cityId);

    let name = document.getElementById("city-name");
    let population = document.getElementById("city-population");
    console.error("Méthode getCityDetail non implémentée");
    document.getElementById("city-image").setAttribute("src","imageData");
    document.getElementById("no-city-selected").hidden = true;
    document.getElementById("city-form").hidden = true;
    document.getElementById("city-details").hidden = false;
};

let addActivity = function(newActivity){
    let addActivityRequest = new XMLHttpRequest();
    let url = "api/continents/"+currentSelection.continent+"/countries/"+currentSelection.country+"/cities/";
    addActivityRequest.responseType = "json"
    addActivityRequest.open("POST",url)

}

window.onload = function () {
    changeTab("EUROPE");
};