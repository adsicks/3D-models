



module ExtraHandsClamp(lapDepth, obThickness, bExploded,bCutView){
clampLen=4;
clampWidth=2;
clampFrontL=clampLen;
clampFrontW =clampWidth/2;
clampBackW =clampWidth/2;
footNotch =0.5;
footBack = 1;
backNotchL=1;
backNotchW = 0.5;
backNotchD =0.375;

//Base
rotate([180,0,180])
translate([-clampLen,0,0])
difference(){
cube([clampLen,clampWidth,obThickness]);
translate([1,0,0])    cube([footNotch,clampWidth,lapDepth]);
// right Foot    
translate([2.5,0,0])    cube([footNotch,clampWidth,lapDepth]);
// Left Foot

 translate([0,1,0]) cube([clampLen,footBack,lapDepth]);
if (!bCutView) {
    translate([clampLen/2,clampFrontW/2,0]) cylinder(r=0.1875);}
// Rear foot
     
} 

// Front clamp
rotate(bCutView ? [180,0,0] : [0,0,0])
// echo(bExploded ? [0,-1,0] : bCutView ? [4,-1,0] : [0,0,0]);
translate(bExploded ? [0,-1,0] : bCutView ? [4,-1,0] : [0,0,0])
difference(){
    cube([clampFrontL,clampFrontW,obThickness]);
    translate([1,0,0])    cube([footNotch,clampFrontW,lapDepth]);
    
translate([2.5,0,0])    cube([footNotch,clampFrontW,lapDepth]);
    if(!bCutView) translate([clampFrontL/2,clampFrontW/2,0]) cylinder(r=0.1875);
  }

// Back clamp
rotate(bCutView ? [180,0,0] : [0,0,0])  
translate(bExploded ? [0,2,1.5] : bCutView ? [4,-2,lapDepth] : [0,1,obThickness-lapDepth]) 
difference(){
    cube([clampLen,clampBackW,obThickness-lapDepth]);
    translate([1.5,0,0]) cube([backNotchL,backNotchW,obThickness-lapDepth]);    
}

translate(bExploded ? [0,1.25,.5] : bCutView ? [8,0,-obThickness] : [0,clampFrontW,-lapDepth]) 
cube([1,1,obThickness]);

translate(bExploded ? [3,1.25,.5] : bCutView ? [9,0,-obThickness] : [3,clampFrontW,-lapDepth]) 
cube([1,1,obThickness]);
}
