# scad-signs
Customizable signs for multi material printing made with OpenSCAD.

## Requirements
Requires OpenSCAD 2019.05 or newer.

## Exporting for multi material
OpenSCAD doesn't have native handling of exporting objects with multiple parts, you need to export them one at a time manually.
Look for //Part comments, the lines below is for one part. If there is a % in the beginning of the line the rendering of that part will be suppressed but it will be previewed.
Normally all but one part line should be suppressed with %.

## Included scad sripts

### rectangular_outlined.scad
Outlined text in a rectangular block.
![Example of rectangular_outlined.scad](images/rectangular_outlined.png)

### double_outlined.scad
Text with double outlines.
![Example of double_outlined.scad](images/double_outlined.png)

## Make variations
You can often get more variations out of the same files by for example setting a size to 0 to disable a feature.
![Example of double_outlined.scad](images/double_outlined.png)

### Skip an outline
By setting an outline width to 0 it can be turned off, giving you a single outline.
![Example with one of two outlines disabled](images/double_outlined_no_outer.png)

### Top coats
The top coat is for a coating of transparent filament, that gives a large flat area for the slicer to iron for a very smooth top surface. Set depth to 0 to disable or just don't export that part.
![Example of top coat](images/double_outlined_top_coat.png)
