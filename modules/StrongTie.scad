module  StrongTie_cube(height=60,width=48, depth=24, top_level=60, bottom_level=6)
{
    post_w = 3.5;
    post_h = 1.5;
    post_l=height;

    light_l = width;
    light_w = depth;
    light_th = 0.25;

    bottom_l=width;
    bottom_w=depth;
    bottom_th = .75;

    top_b = top_level-post_w; // plane of top frame.
    bottom_b=bottom_level-post_h;

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
    translate([0,post_h,bottom_b]) 
        cube([post_h,light_l,post_w]);
    translate([light_w+((2*post_w)-post_h),post_h,bottom_b]) 
        cube([post_h,light_l,post_w]);
    translate([post_w,0,bottom_b])  
        cube([light_w,post_h,post_w]);
    translate([post_w,light_l+post_h,bottom_b])  
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
        
}

// StrongTie_cube(36,36,16,36,6); // Brian's table frame
 StrongTie_cube(84,48,24,84,6); // Grow Station Frame 