top(false, false);

module top(bExploded, bCutView){
    
    lapDepth = 0.375;
    topOverHang =1.5; // Overhang for front of top shelf
    fanSize=3;
    outletW =2;
    outletH=4;
// Back
rotate(bCutView ? [90,0,0] : [0,0,0])
difference(){
cube([17,.75,7.25]);
translate([13,0,1.625]) cube([outletW,.75,outletH ]);
translate([2,0,2.125]) cube([fanSize,.75,fanSize]);    
translate([7,0,2.125]) cube([fanSize,.75,fanSize]);   

}

// top
rotate(bCutView ? [180,0,0] : [0,0,0])
translate(bCutView ? [0,-17,-1] : bExploded?[0,-topOverHang,10] : [0,-topOverHang,7.25-lapDepth]) 
difference(){
    // main material
cube([17,7.25,.75]);
    // Corner joint laps
cube([lapDepth,7.25, lapDepth]);
translate([17-lapDepth,0,0]) cube([lapDepth,7.25, lapDepth]);
translate([0,topOverHang,0]) cube([17,0.75,lapDepth]); // Dado cut
}
// Right side
rotate(bCutView ? [0,-90,0] : [0,0,0])
translate(bCutView?[0,1,-7.25] : bExploded?[-2,-topOverHang,0] : [0,-topOverHang,0]) 
difference(){
cube([.75,7.25,7.25]);
    // Corner joint lap
translate([lapDepth,0,7.25-lapDepth]) cube([lapDepth,7.25, lapDepth]);  
  translate([lapDepth,topOverHang,0]) cube([lapDepth,0.75,7.25]);  
}

// Left Side
rotate(bCutView ? [0,90,0] : [0,0,0])
translate(bCutView ? [-1,1,8] : bExploded?[18.25,-topOverHang,0] : [16.25,-topOverHang,0]) 
difference() {
cube([.75,7.25,7.25]);
translate([0,0,7.25-lapDepth]) cube([lapDepth,7.25, lapDepth]);
    translate([0,topOverHang,0]) cube([lapDepth,0.75,7.25]); 
}
}