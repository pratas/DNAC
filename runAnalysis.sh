#!/bin/bash
#==============================================================================
GET_GOOSE=1;
GET_GECO=1;
#==============================================================================
GET_DNA=1;
#==============================================================================
RUN_NC=1;
#==============================================================================
RUN_PROFILE=1;
#==============================================================================
RUN_PLOT=1;
#==============================================================================
###############################################################################
#==============================================================================
# GET GOOSE
if [[ "$GET_GOOSE" -eq "1" ]]; then
  rm -fr goose/ goose-*
  git clone https://github.com/pratas/goose.git
  cd goose/src/
  make
  cd ../../
  cp goose/src/goose-* .
  cp goose/scripts/Get*.sh .
fi
#==============================================================================
# GET GECO
if [[ "$GET_GECO" -eq "1" ]]; then
  rm -fr geco/
  git clone https://github.com/pratas/geco.git
  cd geco/src/
  cmake .
  make
  cp GeCo ../../
  cd ../../
fi
#==============================================================================
###############################################################################
#==============================================================================
if [[ "$GET_DNA" -eq "1" ]]; then
  wget http://sweet.ua.pt/pratas/datasets/DNACorpus.zip
  unzip DNACorpus.zip
  mv DNACorpus/* .
fi
#==============================================================================
###############################################################################
#==============================================================================
if [[ "$RUN_NC" -eq "1" ]]; then
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 OrSa ) &> REPORT_OrSa;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 HoSa ) &> REPORT_HoSa;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 GaGa ) &> REPORT_GaGa;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 DaRe ) &> REPORT_DaRe;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 DrMe ) &> REPORT_DrMe;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 EnIn ) &> REPORT_EnIn;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 ScPo ) &> REPORT_ScPo;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 PlFa ) &> REPORT_PlFa;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 EsCo ) &> REPORT_EsCo;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 HePy ) &> REPORT_HePy;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 AeCa ) &> REPORT_AeCa;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 HaHi ) &> REPORT_HaHi;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 YeMi ) &> REPORT_YeMi;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 BuEb ) &> REPORT_BuEb;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 AgPh ) &> REPORT_AgPh;
  printf "1\t%s\n" `cat REPORT_OrSa | grep "Total bytes" | awk '{ print $16 } '` >  NC_VALUES;
  printf "2\t%s\n" `cat REPORT_HoSa | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "3\t%s\n" `cat REPORT_GaGa | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "4\t%s\n" `cat REPORT_DaRe | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "5\t%s\n" `cat REPORT_DrMe | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "6\t%s\n" `cat REPORT_EnIn | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "7\t%s\n" `cat REPORT_ScPo | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "8\t%s\n" `cat REPORT_PlFa | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "9\t%s\n" `cat REPORT_EsCo | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "10\t%s\n" `cat REPORT_HePy | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "11\t%s\n" `cat REPORT_AeCa | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "12\t%s\n" `cat REPORT_HaHi | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "13\t%s\n" `cat REPORT_YeMi | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "14\t%s\n" `cat REPORT_BuEb | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "15\t%s\n" `cat REPORT_AgPh | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
fi
#==============================================================================
###############################################################################
#==============================================================================
if [[ "$RUN_PROFILE" -eq "1" ]]; then
  ./goose-filter -w 50001 -d 500 -wt 1 -1 < OrSa.iae > OrSa.fil
  ./goose-filter -w 80001 -d 500 -wt 1 -1 < HoSa.iae > HoSa.fil
  ./goose-filter -w 70001 -d 500 -wt 1 -1 < GaGa.iae > GaGa.fil
  ./goose-filter -w 40001 -d 500 -wt 1 -1 < DaRe.iae > DaRe.fil
  ./goose-filter -w 20001 -d 500 -wt 1 -1 < DrMe.iae > DrMe.fil
  ./goose-filter -w 20001 -d 500 -wt 1 -1 < EnIn.iae > EnIn.fil
  ./goose-filter -w 16001 -d 500 -wt 1 -1 < ScPo.iae > ScPo.fil
  ./goose-filter -w 15001 -d 200 -wt 1 -1 < PlFa.iae > PlFa.fil
  ./goose-filter -w 10001 -d 200 -wt 1 -1 < EsCo.iae > EsCo.fil
  ./goose-filter -w 5001 -d 100 -wt 1 -1 < HePy.iae > HePy.fil
  ./goose-filter -w 5001 -d 100 -wt 1 -1 < AeCa.iae > AeCa.fil
  ./goose-filter -w 10001 -d 200 -wt 1 -1 < HaHi.iae > HaHi.fil
  ./goose-filter -w 21 -d 1 -wt 1 -1 < YeMi.iae > YeMi.fil
  ./goose-filter -w 11 -d 1 -wt 1 -1 < BuEb.iae > BuEb.fil
  ./goose-filter -w 11 -d 1 -wt 1 -1 < AgPh.iae > AgPh.fil
fi
#==============================================================================
###############################################################################
#==============================================================================
if [[ "$RUN_PLOT" -eq "1" ]]; then
  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "OrSa.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "OrSa.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "HoSa.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "HoSa.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "GaGa.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "GaGa.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "DaRe.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "DaRe.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "DrMe.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "DrMe.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "EnIn.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "EnIn.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "ScPo.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "ScPo.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "PlFa.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "PlFa.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "EsCo.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "EsCo.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "HePy.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "HePy.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "AeCa.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "AeCa.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "HaHi.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "HaHi.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "YeMi.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "YeMi.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "BuEb.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "BuEb.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

  gnuplot << EOF
  reset
  set terminal pdfcairo enhanced color
  set output "AgPh.pdf"
  set auto
  set size ratio 0.05
  unset key
  set yrange [0:2] 
  set ytics 1
  unset grid 
  set ylabel "BPS"
  set xlabel "Length"
  unset border
  unset xtics
  unset ytics
  set style line 1 lt 1 lc rgb '#dd181f' lw 1
  plot "AgPh.fil" u 1:2 w l lt rgb "#292929" title "normal"
EOF

fi
#==============================================================================
