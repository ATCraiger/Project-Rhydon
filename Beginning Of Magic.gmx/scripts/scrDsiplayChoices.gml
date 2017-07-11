otherObject = argument0;
dB = instance_find(objDialogueBox, 0);

///Show choices after text has been printed
if(shouldShowChoices && !optionsAreAvailable) {
    for(i = 0; i < array_length_2d(otherObject.myDialogue, conversationCounter); ++i) {
        if(!i == 0) {
            conversationChoices[i] = instance_create(dB.bbox_top, dB.bbox_top + (i * 100), objDialogueChoice);
            draw_text(dB.x, dB.y + (i * 100), otherObject.myDialogue[conversationCounter, i]);
            //show_debug_message(otherObject.myDialogue[conversationCounter, i]);
            with(conversationChoices[i]) {
                if(other.i == 1)
                    image_index = 1;
                image_speed = 0;
            }
        }
    }
    optionsAreAvailable = true;
    //show_message("no longer being created");
}
