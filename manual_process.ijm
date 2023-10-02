// FIJI script to manually adjust brightness/contrast for each image 

// Open an image

//path for the folder of images 

path = "/Users/student/Desktop/2639+CTB_DiI/2639/14.nd2/" //change image name 

i = 48 //this is based on the name of the nd2 image 

run("Bio-Formats Importer", "open=[" + path  + "] color_mode=Composite rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT");

run("Split Channels"); //splits all florescent channels 

selectWindow("C3-" + i + "-nd2"); //adjust based on name of the channel
run("Brightness/Contrast..."); //opens adjust open 
run("Enhance Contrast", "saturation=0.35"); //auto adjust for reference 
rename("dapi"); //rename based on the florescence

selectWindow("C1-" + i + "-nd2");
run("Brightness/Contrast...");
run("Enhance Contrast", "saturation=0.35");
rename("ctb");

selectWindow("C2-" + i + "-nd2");
run("Brightness/Contrast...");
run("Enhance Contrast", "saturation=0.35");
rename("dii");

//selectWindow("C2-" + i + "-nd2"); can be used to close any unecessary channel
//run("Close Channel")

//must manually merge and save as png/jpg

