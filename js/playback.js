/**
 * Created by lade on 3/27/16.
 */
//help from https://www.kirupa.com/html5/handling_events_for_many_elements.htm

var parent = $("#main_buttons");
parent.addEventListener("click", play_audio, false);

function play_audio(e) {
	if (e.target !== e.currentTarget) {
		var clickedItem = e.target.id;
		alert("You clicked " + clickedItem);
	}

	e.stopPropagation();
}
