///Display the last message from an NPC and then end conversation
otherObject = argument0;
//Set global variables
partyCanMove = false;
isTalking = true;
optionsAreAvaialable = false;
shouldShowChoices = false;
//quickMessage = true;
otherObject.iAmTalking = false;

dB = instance_create(view_xview[view_current] + (view_hborder[view_current]), view_yview[view_current] + (1.3* view_vborder[view_current]), objDialogueBox); //Create the textbox
//show_message(otherObject.myDialogue[conversationCounter,0]);
with(dB)
{
    padding = 32;
    maxLength = sprite_width; //The max length of the text displayed on screen
    textToDisplay = other.otherObject.myDialogue[conversationCounter, 0];
    displaySpeed = 10;
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
