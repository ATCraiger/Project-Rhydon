///Create all of the boxes on the monster
for(i = 0; i <= ceil(myWidthSquares); ++i) {
    for(j = 0; j <= ceil(myHeightSquares); ++j) {
        hitBox = instance_create(bbox_left + (i * squareSize), bbox_top + (j * squareSize), objMonsterHitBox);
        //They are, by default, misses. If they collide with enemy, set them to be hits
        if(collision_rectangle(hitBox.bbox_left, hitBox.bbox_top, hitBox.bbox_right, hitBox.bbox_bottom, objEnemyParent, true, false)) {
            hitBox.sprite_index = sprHit;
            hitBox.type = HitBox.HIT;
        }
        //Record that data
        myGrid[i,j] = hitBox;
        myGrid[i,j].spot1 = i;
        myGrid[i,j].spot2 = j;
        //Set criticle hits
        if(critI[0] != undefined) { //Safeguard
            if(i == critI[critCount] && j == critJ[critCount]) {
                hitBox.sprite_index = sprCrit;
                hitBox.type = HitBox.CRIT;
                ++critCount;
                if(critCount >= array_length_1d(critI))
                    critCount = 0;
            }
        }
    }
}
