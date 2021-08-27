## % gnuplot -c gnu.sh

set style data line 
set title noenhanced
set term svg size 1024,768

$data << EOD
0 8.158 8.158 0.000
1 8.750 9.750 1.000
2 9.167 9.167 0.000
EOD

set term push
set output 'output_1.svg'
set multiplot layout 4,1
set title "a.csv" 
plot $data u 1:2 notitle w l lc 'blue' lw 2
set title "b.csv"
plot $data u 1:3 notitle  w l lc 'green' lw 2
set title "Overlapping"
plot $data u 1:2  title "a.csv" noenhanced w l lc 'blue' lw 2, '' u 1:3 title "b.csv" noenhanced w l lc 'green' lw 2
set title "abs diff"
plot $data u 1:4  notitle w l lc 'orange' lw 2
unset multiplot
set term pop
        
$data << EOD
0 64.462 64.462 0.000
1 34.173 64.173 30.000
2 63.665 63.665 0.000
EOD

set term push
set output 'output_2.svg'
set multiplot layout 4,1
set title "a.csv" 
plot $data u 1:2 notitle w l lc 'blue' lw 2
set title "b.csv"
plot $data u 1:3 notitle  w l lc 'green' lw 2
set title "Overlapping"
plot $data u 1:2  title "a.csv" noenhanced w l lc 'blue' lw 2, '' u 1:3 title "b.csv" noenhanced w l lc 'green' lw 2
set title "abs diff"
plot $data u 1:4  notitle w l lc 'orange' lw 2
unset multiplot
set term pop
        
