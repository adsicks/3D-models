post_w = 3.5;
post_h = 1.5;
post_l=80;

light_l = 48;
light_w = 24;
light_th = 0.25;

bottom_l=48;
bottom_w=24;
bottom_th = .75;

top_b = post_l-post_w; // plane of top frame.

// holes
for(h=[12:12:post_l]){
    color("black"){
        translate([post_h,post_h,h]) 
            rotate([90,0,0])
                circle(d=1);
        translate([post_h,bottom_l+post_h,h]) 
    rotate([90,0,0])
    circle(d=1);
        translate([bottom_w+((2*post_w)-1),post_h,h]) 
    rotate([90,0,0])
    circle(d=1);
        translate([bottom_w+((2*post_w)-1),bottom_l+post_h,h]) 
    rotate([90,0,0])
    circle(d=1);
        }
    
}

// light mount
translate([-40,0,60]) 
    cube([light_w,light_l,light_th]);
    
// basic shelf
translate([-40,0,12]) 
    cube([bottom_w,bottom_l,bottom_th]);
    
// posts
translate([0,0,0]) 
    cube([post_w,post_h,post_l]);
translate([light_w+post_w,0,0]) 
    cube([post_w,post_h,post_l]);
translate([light_w+post_w,light_l+post_h,0]) 
    cube([post_w,post_h,post_l]);
translate([0,light_l+post_h,0])
    cube([post_w,post_h,post_l]);
    


// bottom_frame
translate([0,post_h,0]) 
    cube([post_h,light_l,post_w]);
translate([light_w+((2*post_w)-post_h),post_h,0]) 
    cube([post_h,light_l,post_w]);
translate([post_w,0,0])  
    cube([light_w,post_h,post_w]);
translate([post_w,light_l+post_h,0])  
    cube([light_w,post_h,post_w]);
// top_frame
translate([0,post_h,top_b]) 
    cube([post_h,light_l,post_w]);
translate([light_w+((2*post_w)-post_h),post_h,top_b])
   cube([post_h,light_l,post_w]);
translate([post_w,0,top_b])  
    cube([light_w,post_h,post_w]);
translate([post_w,light_l+post_h,top_b])  
    cube([light_w,post_h,post_w]);
