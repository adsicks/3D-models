deck_frame_h = 6;
deck_support_h = 8;
deck_l=24*12;
door_left=deck_l-21;
door_h=72;

// door
color("white"){
translate([door_left,0,deck_frame_h]) cube([3.5,1,door_h]);
    translate([door_left-36,0,deck_frame_h]) cube([3.5,1,door_h]);
    translate([door_left-36,0,deck_frame_h+72]) cube([36+3.5,1,3.5]);
    
}

color("Sienna"){
translate([0,0,0]) cube([96,2,deck_frame_h]);
translate([96,0,0]) cube([96,2,deck_frame_h]);
translate([192,0,0]) cube([96,2,deck_frame_h]);

translate([0,98,0]) cube([96,2,deck_frame_h]);
translate([96,98,0]) cube([96,2,deck_frame_h]);
translate([192,98,0]) cube([96,2,deck_frame_h]);


translate([0,2,0]) cube([2,96,deck_frame_h]);
translate([24,2,0]) cube([2,96,deck_frame_h]);
translate([48,2,0]) cube([2,96,deck_frame_h]);
translate([72,2,0]) cube([2,96,deck_frame_h]);
translate([96,2,0]) cube([2,96,deck_frame_h]);
translate([120,2,0]) cube([2,96,deck_frame_h]);
translate([144,2,0]) cube([2,96,deck_frame_h]);
translate([168,2,0]) cube([2,96,deck_frame_h]);
translate([192,2,0]) cube([2,96,deck_frame_h]);
translate([216,2,0]) cube([2,96,deck_frame_h]);
translate([240,2,0]) cube([2,96,deck_frame_h]);
translate([264,2,0]) cube([2,96,deck_frame_h]);
translate([286,2,0]) cube([2,96,deck_frame_h]);

}

color("SaddleBrown"){
translate([0,0,-deck_support_h]) cube([144,2,deck_support_h]);
translate([144,0,-deck_support_h]) cube([144,2,deck_support_h]);
translate([0,6,-deck_support_h]) cube([144,2,deck_support_h]);
translate([144,6,-deck_support_h]) cube([144,2,deck_support_h]);

translate([0,92,-deck_support_h]) cube([144,2,deck_support_h]);
translate([144,92,-deck_support_h]) cube([144,2,deck_support_h]);
translate([0,98,-deck_support_h]) cube([144,2,deck_support_h]);
translate([144,98,-deck_support_h]) cube([144,2,deck_support_h]);
}

color("Brown"){
translate([2,2,-36]) cube([4,4,144]);
translate([92,2,-36]) cube([4,4,144]);
translate([188,2,-36]) cube([4,4,144]);
translate([282,2,-36]) cube([4,4,144]);
translate([2,94,-36]) cube([4,4,124]);
translate([92,94,-36]) cube([4,4,124]);
translate([188,94,-36]) cube([4,4,124]);
translate([282,94,-36]) cube([4,4,124]);
}