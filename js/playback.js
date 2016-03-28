/**
 * Created by lade on 3/27/16.
 */
//help from https://www.kirupa.com/html5/handling_events_for_many_elements.htm

function Time(word, number) {
	this.timeWord = word;
	this.timeInSeconds = parseInt(number);
	this.basename = number + "_" + word;
}

var timeList = [];
timeList[0] = new Time("day","005");
timeList[1] = new Time("week","010");
timeList[2] = new Time("month","020");
timeList[3] = new Time("year","040");
timeList[4] = new Time("decade","060");
timeList[5] = new Time("century","120");
timeList[6] = new Time("centuries","180");
timeList[7] = new Time("millenium","240");
timeList[8] = new Time("age","300");
timeList[9] = new Time("age","360");

console.log(timeList);

var parentDiv = document.querySelector("#main_buttons");
parentDiv.addEventListener("click", play_audio, false);

function play_audio(e) {
	if (e.target !== e.currentTarget) {
		var clickedItem = e.target.id;
		console.log("You clicked " + clickedItem);



	}

	e.stopPropagation();
}
