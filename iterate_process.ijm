// Define the directory path containing the files
path = "/Users/student/Desktop/2803/set1/";

filenames = getFileList(path);

// Iterate through each filename
for (i = 0; i < lengthOf(filenames); i++) {
  // Create the full path for the current file
  filePath = path + filenames[i];

  // Open the current file using Bio-Formats Importer
  run("Bio-Formats Importer", "open=[" + filePath  + "] color_mode=Composite rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT");

  // Split Channels
  run("Split Channels");

  // Close unnecessary channels
  selectWindow("C1-" + filenames[i]);
  close();
  selectWindow("C3-" + filenames[i]);
  close();

  // Process DII channel
  selectWindow("C2-" + filenames[i]);
  run("Brightness/Contrast...");
  run("Enhance Contrast", "saturation=0.35");
  rename("dii");

  // Process DAPI channel
  selectWindow("C4-" + filenames[i]);
  run("Brightness/Contrast...");
  run("Enhance Contrast", "saturation=0.35");
  rename("dapi");

  // Merge Channels
  run("Merge Channels...", "red=dii blue=dapi create");

  // Save the processed image as a PNG file
  saveAs("PNG", path + filenames[i] + ".png");

  // Close the current image
  close();
}