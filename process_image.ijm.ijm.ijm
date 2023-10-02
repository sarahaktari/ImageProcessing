// This is a Fiji script example

// Open an image

path = "/Users/student/Desktop/2639+CTB_DiI/2639/14.nd2/"

i = 48

run("Bio-Formats Importer", "open=[" + path  + "] color_mode=Composite rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT");

//run("Split Channels");

//selectWindow("C3-");
run("Brightness/Contrast...");
//run("Enhance Contrast", "saturation=0.35");
//rename("dapi");

//selectWindow("C1-");
//run("Brightness/Contrast...");
//run("Enhance Contrast", "saturation=0.35");
//rename("ctb");

//selectWindow("C2-");
//run("Brightness/Contrast...");
//run("Enhance Contrast", "saturation=0.35");
//rename("dii");

//run("Merge Channels...", "red=dii blue=dapi green=ctb create");

//saveAs("PNG", "/Users/student/Desktop/1803_DiI_OT_2/1803_2_1.png");

