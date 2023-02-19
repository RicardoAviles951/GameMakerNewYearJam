//Create Quipbox sequence
seq = layer_sequence_create("Controllers",x,y,sq_quips);
//Gets position to place text
_x = x + 8;
_y = y - 42;


//Character Specific quips
MamaText[0] = "It's so nice having an extra set of hands around here."; 
MamaText[1] = "Don't forget to water the plants in the morning each day.";
MamaText[2] = "You make me feel so special!";
MamaText[3] = "My my oh my, this garden is looking so beautiful with your help!";

ThiccText[0] = "It's awesome having another person to help us dig all these holes!";
ThiccText[1] = "You're alright, champ! Let's hit the surf together some time, I'll teach you how to ride waves like me.";
ThiccText[2] = "I'll be doing my leg day routine later. Wanna join, matey?";
ThiccText[3] = "There's never a 'dill' moment working with ya, matey. ...Get it? WAHAHA!";

TeddyText[0] = "I really appreciate your help around here, you're a real winner.";
TeddyText[1] = "Say you're the person who helped me get Mum off Insect Island, aren't you? Couldn't have done it without you.";
TeddyText[2] = "Let's go surfing with Thicc Leggz sometime, you'll have a blast!";
TeddyText[3] = "Mum makes the best curry chickpea-loaded baked potatoes. You gotta try them!";
TeddyText[4] = "Let's... do this!";

//Code for Typing out text

text[0] = MamaText[irandom(3)];
text_current = 0;
text_width = 272;
char_current = 1;
char_speed = .50;
text[text_current] = string_wrap(text[text_current], text_width);
_len = string_length(text[text_current]);
txt_finished = false;
