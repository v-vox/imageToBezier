# imageToBezier
Converts an image into bezier curves. 

Bezier curves generated will be 10x the resolution of the original image.
ImageToBezier.cmd to open the tool. Images must be in THIS directory (same directory as ImageToBezier.cmd) 
.
Image format conversion and canny edge detection using openCV (included in release), tracing SVGs to a single path using Potrace, and then script to convert bezier paths to curve equations.
release includes all DLLs
