isPaused = true;
for(i = 0; i < instance_count; ++i) {
    allObjects[i] = instance_id[i];
}
instance_deactivate_all(true);
instance_activate_object(objPauseSystem);
