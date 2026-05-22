# /stl [bambu]

Export the current OpenSCAD file to STL. Optionally open in Bambu Studio.

## Arguments

- `bambu` (optional): If provided, open the exported STL in Bambu Studio

## Instructions

1. Find the .scad file in the current project (use the most recently modified one if multiple exist)
2. Export to STL using the openscad skill's export-stl.sh tool
3. If "bambu" argument provided, open the exported STL using `open -a "BambuStudio" <path>`
