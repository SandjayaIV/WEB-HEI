var currentFight;

var initCharacter = function (pseudoParam, jobParam) {
    let pseudo = pseudoParam ? pseudoParam :"Anthony";
    let job = jobParam ? jobParam : "developer";

    console.log("Pseudo = " + pseudo);
    console.log("Job = " + job);

    let titleElement = document.getElementsByTagName("h2")[0];
    titleElement.innerText = "Welcome to the arena, " + pseudo + ", the " + job;
    return {
        name: pseudo,
        job: job
    };
};

var initFight = function (character) {
    let startingLifePointsElement = document.getElementById("startingLifePoints");
    let startingLifePoints = startingLifePointsElement.value;

    if (startingLifePoints > 0) {
        purgeBattleLog();
        currentFight = {
            character: character,
            startingLifePoints: startingLifePoints,
            aiActionsArray : []
        };
        let lifePointsElements = document.querySelectorAll("#userLifePoints, #aiLifePoints");
        for (const lifePointsElement of lifePointsElements) {
            lifePointsElement.innerText = startingLifePoints;
        }
        changeActionButtonsStatus(false)
        document.getElementById("arena").hidden = false;
    } else {
        console.error("Wrong starting life points");
    }
};

var purgeBattleLog = function () {
    let battleLogLines = document.querySelectorAll("#battle-log tr");
    for (let idx = 1 ; idx < battleLogLines.length ; idx++) {
        battleLogLines[idx].remove();
    }
};

var manageUserAction = function (typeAction) {
    if(currentFight) {
        console.log("Action = " + typeAction);

        let aiAction = generateRandomAction();

        let resultAction = getResultAction(typeAction, aiAction);

        let battleLogTable = document.getElementById("battle-log");
        let newLine = createActionLine(typeAction, aiAction, resultAction);
        battleLogTable.appendChild(newLine);

        changeLifePoints(resultAction);
    } else {
        console.error("No fight in progress!");
        alert("A fight must be started.");
    }
};

var generateRandomAction = function () {
    let min = 1;
    let max = 3;
    let aiAction = Math.floor(Math.random() * (max - min + 1)) + min;
    console.log("AI action = " + aiAction);
    currentFight.aiActionsArray.push(aiAction);

    return aiAction;
};

var getResultAction = function (userAction, aiAction) {
    let result = aiAction - userAction;
    if (result === 2 || result === -2) {
        result *= -1 / 2;
    }
    return result;
};

var changeLifePoints = function (resultAction) {
    let lifePoints;
    if (resultAction === 1) {
        lifePoints = parseInt(document.getElementById("aiLifePoints").innerText);
        lifePoints--;
        document.getElementById("aiLifePoints").innerText = lifePoints;

    } else if (resultAction === -1) {
        lifePoints = parseInt(document.getElementById("userLifePoints").innerText);
        lifePoints--;
        document.getElementById("userLifePoints").innerText = lifePoints;
    }

    if (lifePoints === 0) {
        handleEndOfFight(resultAction === 1 ? "VICTORY" : "DEFEAT");
    }
};

var changeActionButtonsStatus = function (disabled) {
    let actionButtons = document.querySelectorAll("#validPhysicalAttack, #validMagicalAttack, #validDefense");
    for (const actionButton of actionButtons) {
        actionButton.disabled = disabled;
    }
};

var handleEndOfFight = function (result) {
    if (result === "VICTORY") {
        alert("Fight is over. Congratulation, you win!");
    } else {
        alert("Fight is over. Unfortunately, you lose!")
    }
    changeActionButtonsStatus(true);
    getStatistics();
    currentFight = undefined;
};

var getStatistics = function () {
    let attacks = [undefined, 0, 0, 0];
    for (const action of currentFight.aiActionsArray) {

        attacks[action]++;
    }
    console.log("Light attacks : " + attacks[1]);
    console.log("Heavy attacks : " + attacks[2]);
    console.log("Defenses : " + attacks[3]);
};

window.onload = function () {
    document.getElementById("arena").hidden = true;

    let beginFightButton = document.getElementById("beginFight");
    beginFightButton.onclick = function () {
        let beginFight = true;
        if(currentFight) {
            beginFight = confirm("A fight is in progress. Start a new fight?");
        }
        if(beginFight) {
            let character = initCharacter(
                document.getElementById("userName").value,
                document.getElementById("userJob").value);
            initFight(character);
        }
    };

    document.getElementById("validPhysicalAttack").onclick = function () {
        manageUserAction(1);
    };

    document.getElementById("validMagicalAttack").onclick = function () {
        manageUserAction(2);
    };

    document.getElementById("validDefense").onclick = function () {
        manageUserAction(3);
    };

    // ##### HALL OF FAME #####

    countFighters();
    listFighters();
    document.getElementById()
};
