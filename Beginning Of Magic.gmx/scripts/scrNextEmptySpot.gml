grid = argument0;
for(i = 0; i < ds_grid_height(grid); ++i) {
    if(ds_grid_get(grid, i, 0) == 0)
        return i;
}
