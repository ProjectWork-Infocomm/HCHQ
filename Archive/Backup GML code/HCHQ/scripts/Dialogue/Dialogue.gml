function create_dialog(_messages){
	if (instance_exists(obj_dialogue)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialogue);
	_inst.messages = _messages;
	_inst.current_message = 0;
}

char_colors = {
	"Congrats": c_yellow,
	"Mr Lee": c_yellow,
	"Student": c_aqua
}

welcome_dialog = [
{
	name: "Mr Lee",
	msg: "Welcome to Hwa Chong Institution!"
},

{
	name: "Student",
	msg: "Hi..! I'm new here... This is my dream school!"
},

{
	name: "Mr Lee",
	msg: "Wow! Good to hear that!"
},

{
	name: "Student",
	msg: "Yeah, had to work my life off to get in here, but it was definitely worth it-"
},

{
	name: "Mr Lee",
	msg: "*Phone ringing*"
},

{
	name: "Mr Lee",
	msg: "Oops, I'm sorry, let me get this real quick."
},

{
	name: "Student",
	msg: "U-uhm.. okay..."
},

{
	name: "Mr Lee",
	msg: "Mhm.. yeah.. okay... w-what?! "
},

{
	name: "Mr Lee",
	msg: "Wha.. What do you mean t-that..."
},

{
	name: "Mr Lee",
	msg: "OUR HISTORICAL ARTEFACTS ARE GONE??"
},

{
	name: "Mr Lee",
	msg: "Oh no... no no no no NO!"
},

{
	name: "Mr Lee",
	msg: "What will we do?? How will our students be able to learn with an engaging lesson now?"
},

{
	name: "Student",
	msg: "Uhh... w-well.. Maybe I can try finding the artefacts somehow?"
},

{
	name: "Mr Lee",
	msg: "Oh right! You can help us out!"
},

{
	name: "Mr Lee",
	msg: "I'll have some teaches help you out too, maybe they have an better idea on what's going on."
},

{
	name: "Mr Lee",
	msg: "Alright! I'll give it my best shot!"
},

{
	name: "Mr Lee",
	msg: "Thank you so much, fellow HCI student."
},

{
	name: "Game",
	msg: "+1 GPS, +1 Shovel"
},
];

not_completed_dialog = [
{
	name: "Mr Lee",
	msg: "Why hello, student! How's the mission going?" 
},

{
	name: "Student",
	msg: "It's going alright..."
}
];

MrLee_quiz = [
    {
        name: "Mr Lee",
        msg: "Well done, but let's see if you've really paid attention!"
    },

    {
        name: "Mr Lee",
        msg: "Answer these questions...",
        quiz_question: {
            question: "test question",
            answers: [
                { text: "correct", correct: true },
                { text: "wrong", correct: false },
                { text: "wrong", correct: false }
            ]
        }
    }
];
