var countFighters = function () {
    let request = new XMLHttpRequest();
    request.open("GET","fighter/count",true);

    request.onload = function(){
        console.log(this.response);
        let nbFighters = this.response;
        document.getElementById("fightersNumber").innerText = nbFighters ;
    };

    request.send();



};

var getFighterDetails = function (fighterId) {
    let request = new XMLHttpRequest();
    request.open("GET","fighter/details?id=fighterId",true);
    request.responseType = "json";
    request.onload = function(){
        console.log(request);
        let fighter = this.response;
        document.getElementById("fighterId").innerText = fighter.id;
        document.getElementById("fighterName").innerText = fighter.name;
        document.getElementById("fighterJob").innerText = fighter.job;
        document.getElementById("fighterFights").innerText = fighter.fights;
        document.getElementById("fighterVictories").innerText = fighter.victories;
        document.getElementById("fighterDefeats").innerText = fighter.defeats;

    };
    request.send();

};
var likeFighter = function () {
    let request = new XMLHttpRequest();
    request.open("POST","fighter/like",true);
    request.responseType = "json";
    request.onload = function(){
    if(this.status == 200){
        let likeElement =  document.getElementById("like-fighter"+fighterId);
        let currentLikes = parseInt(likeElement.innerText);
        likeElement.innerText = currentLikes+1;}
        else{
            aler("there has been an error");
    }
    };
    request.setRequestHeader("Content-type","application/w-www-form-urlencoded");
    request.send("id= "+ fighterId);
    };

var listFighters = function () {
    let fightersRequest = new XMLHttpRequest();
    fightersRequest.open("GET", "fighters/list", true);
    fightersRequest.responseType = "json";

    fightersRequest.onload = function () {
        let fighters = this.response;
        for (const fighter of fighters) {
            addFighterToHallOfFame(fighter);
        }
    };

    fightersRequest.send();
};


var addFighterToHallOfFame = function (fighter) {
    let fighterLiElement = document.createElement("li");
    fighterLiElement.setAttribute("class", "list-group-item d-flex justify-content-between");
    fighterLiElement.id="fighter"+fighter.id;

    fighterLiElement.appendChild(createSummary(fighter));
    fighterLiElement.appendChild(createActionsElement(fighter));

    document.getElementById("halloffame").appendChild(fighterLiElement);
};

var createSummary = function (fighter) {
    let fighterName = document.createElement("strong");
    fighterName.innerText = fighter.name;
    let fighterFights = document.createElement("small");
    fighterFights.innerText = "" + fighter.fights + " fights";

    let fighterSummary = document.createElement("div");
    fighterSummary.appendChild(fighterName);
    fighterSummary.appendChild(new Text(" "));
    fighterSummary.appendChild(fighterFights);
    return fighterSummary;
};

var createActionsElement = function (fighter) {
    let likesNumber = document.createElement("span");
    likesNumber.id = "likes-figter" + fighter.id;
    likesNumber.innerText = fighter.likes;
    let heart = document.createElement("i");
    heart.setAttribute("class", "fas fa-heart");

    let likesElement = document.createElement("span");
    likesElement.setAttribute("class", "btn btn-like");
    likesElement.appendChild(likesNumber);
    likesElement.appendChild(new Text(" "));
    likesElement.appendChild(heart);

    let detailButton = document.createElement("button");
    detailButton.id = "detail-fighter"+fighter.id;
    detailButton.setAttribute("class", "btn btn-primary");
    detailButton.setAttribute("title", "Details");
    detailButton.innerHTML = "<i class=\"fas fa-search\"></i>";
    detailButton.onclick = clickDetailHandler;

    let actionDiv = document.createElement("div");
    actionDiv.setAttribute("class", "btn-group btn-group-sm");
    actionDiv.appendChild(likesElement);
    actionDiv.appendChild(detailButton);
    return actionDiv;
};

var clickDetailHandler = function (event) {
    let button = event.target;
    if(button.localName !== "button") {
        button = button.parentElement;
    }
    let fighterId = button.id.substr("detail-fighter".length);
    console.log(fighterId);

    countFighters();
    getFighterDetails(fighterId);
};

