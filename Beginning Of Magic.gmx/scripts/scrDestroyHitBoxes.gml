///Destroy all previous hitboxes
for(i = 0; i < array_height_2d(myGrid); ++i) {
    for(j = 0; j < array_length_2d(myGrid, i); ++j) {
        with(myGrid[i, j])
            instance_destroy();
    }
}
