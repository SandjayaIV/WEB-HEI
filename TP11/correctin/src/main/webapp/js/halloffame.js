    var countFighters = function () {
    let countRequest = new XMLHttpRequest();
    countRequest.open("GET", "fighters/count", true);

    countRequest.onload = function () {
        let count = this.response;

        document.getElementById("fightersNumber").innerText = count;
    };

    countRequest.send();
};

var getFighterDetails = function (fighterId) {
    let detailsRequest = new XMLHttpRequest();
    detailsRequest.open("GET", "fighters/details?id=" + fighterId, true);
    detailsRequest.responseType = "json";

    detailsRequest.onload = function () {
        let fighter = this.response;
        console.log(fighter);

        document.getElementById("fighterId").innerText = fighter.id;
        document.getElementById("fighterName").innerText = fighter.name;
        document.getElementById("fighterJob").innerText = fighter.job;
        document.getElementById("fighterFights").innerText = fighter.fights;
        document.getElementById("fighterVictories").innerText = fighter.victories;
        document.getElementById("fighterDefeats").innerText = fighter.defeats;
    };

    detailsRequest.send();
};

let likeFighter = function () {
    console.log("Like a fighter");

    let likeRequest = new XMLHttpRequest();
    likeRequest.open("POST", "fighters/like", true);

    let fighterId = document.getElementById("fighterId").innerText;

    likeRequest.onload = function () {
        if(this.status === 200) {
            let likeCounterElement = document.getElementById("likes-figter" + fighterId);
            let likes = parseInt(likeCounterElement.innerText);
            likeCounterElement.innerText = likes + 1;
        }
    };

    likeRequest.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    likeRequest.send("id=" + fighterId);
};

function handleFightResponse(fighter) {
    let fighterLine = document.getElementById("fighter" + fighter.id);
    if (fighterLine) {
        console.log("Existing fighter");
        let fightsElement = fighterLine.querySelector("small");
        fightsElement.innerHTML = fighter.fights + " fights";

        if (fighter.id == document.getElementById("fighterId").innerText) {
            document.getElementById("fighterJob").innerText = fighter.job;
            document.getElementById("fighterFights").innerText = fighter.fights;
            document.getElementById("fighterVictories").innerText = fighter.victories;
            document.getElementById("fighterDefeats").innerText = fighter.defeats;
        }

    } else {
        console.log("New fighter");
        addFighterToHallOfFame(fighter);
        let countElement = document.getElementById("fightersNumber");
        countElement.innerText = parseInt(countElement.innerText) + 1;
    }
}

let addFight = function (fight) {
    let addRequest = new XMLHttpRequest();
    addRequest.open("POST", "fighters/addfight", true);
    addRequest.responseType = "json";

    addRequest.onload = function () {
        let fighter = this.response;

        handleFightResponse(fighter);
    };

    addRequest.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    addRequest.send(
        "fighterName=" + fight.fighterName +
        "&fighterJob=" + fight.fighterJob +
        "&status=" + fight.status);
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

    getFighterDetails(fighterId);
};