


module SolderingSta(lapDepth, obThickness, bExploded){

// Dimesnions of the inside base
baseWidth=16;
baseLen=14.25;
sideHeight=1.5;
//add Len for Lap
sideLen=baseLen+lapDepth;

//Base

cube([baseLen,baseWidth,obThickness]);

//Right Side
translate(bExploded?[-0.5, -3, 0]:[-lapDepth, -lapDepth, 0])
difference(){
    cube([sideLen,obThickness, sideHeight]);
    translate([0,lapDepth,0]) cube([sideLen,lapDepth, obThickness]); // Bottom lap
    translate([0,lapDepth,0]) cube([lapDepth, lapDepth, 1.75]); // Corner lap
}

//Left Side
translate(bExploded?[-0.5, 18, 0]:[-lapDepth,baseWidth-lapDepth,0])
difference(){
    cube([sideLen,obThickness, sideHeight]);
    cube([sideLen,lapDepth, obThickness]); // Bottom lap
    cube([lapDepth, lapDepth, sideLen]); // Corner lap
}

//Front
frontWidth = baseWidth+obThickness;
translate(bExploded?[-2,-0.50,0]:[-lapDepth,-lapDepth,0])
difference(){
cube([obThickness,frontWidth, sideHeight]);
translate([lapDepth,0,0]) cube([lapDepth,frontWidth, obThickness]);    // Bottom lap
translate([lapDepth,0,0])cube([lapDepth,lapDepth,sideHeight]);    // Right corner lap
translate([lapDepth,frontWidth-lapDepth,0])cube([lapDepth,lapDepth,sideHeight]); // Left corner lap
}
}
