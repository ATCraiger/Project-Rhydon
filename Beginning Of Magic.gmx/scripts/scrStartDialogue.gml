///Take in two objects that want to have a conversation
player = argument0; //This will be the current player
otherObject = argument1; //This can be an NPC, sign, or anything else

//Set global variables
partyCanMove = false;
optionsAreAvaialable = false;
shouldShowChoices = false;
isTalking = true;
otherObject.iAmTalking = true;

dB = instance_create(view_xview[view_current] + (view_hborder[view_current]), view_yview[view_current] + (1.3* view_vborder[view_current]), objDialogueBox); //Create the textbox
//show_message(otherObject.myDialogue[conversationCounter,0]);
with(dB)
{
    padding = 32;
    maxLength = sprite_width; //The max length of the text displayed on screen
    textToDisplay = other.otherObject.myDialogue[conversationCounter, 0];
    displaySpeed = 5;
    originalDisplaySpeed = displaySpeed;
    displayFont = fntTextBox;
    
    textLength = string_length(textToDisplay);
    fontSize = font_get_size(displayFont);
    
    draw_set_font(displayFont);
    
    textWidth = string_width_ext(textToDisplay, fontSize + (fontSize/2), maxLength);
    textHeight = string_height_ext(textToDisplay, fontSize + (fontSize/2), maxLength);
    
    boxWidth = textWidth + (padding * 2);
    boxHeight = textHeight + (padding * 2);
    
    faceToDraw = other.otherObject.myFace;
}
talkingObject = otherObject;
