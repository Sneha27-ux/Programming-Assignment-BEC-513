set terminal postscript size 6,6 font 'Arial, 15'
set output output

set palette defined ( 0 'blue', 0.25 'cyan', 0.5 'green', 0.75 'yellow', 1 'red' )

unset grid
unset colorbox
set border linewidth 1.5

set view map
set size ratio -0.04

plot input matrix with image
