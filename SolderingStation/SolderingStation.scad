
//Thickness of the 1X8's 3/4" for the milling
obThickness=0.75;
// Lap depth
lapDepth=0.375;



bExploded = false;
bCutView = false;

use <objects/base.scad>
use <objects/ExtraHandsClamp.scad>

SolderingSta(lapDepth, obThickness, bExploded);

rotate([0,0,90]) translate([6,-2.375,1+obThickness])  ExtraHandsClamp(0.1, obThickness, false, bCutView);