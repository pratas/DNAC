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
RUN_GC=1;
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
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 HePi ) &> REPORT_HePi;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 AeCa ) &> REPORT_AeCa;
  (./GeCo -v -e -tm 20:200:1:5/10 -tm 14:50:1:0/0 -tm 13:20:0:0/0 -tm 11:10:0:0/0 -tm 6:1:0:0/0 -tm 3:1:0:0/0 -c 100 -g 0.9 HaHi ) &> REPORT_HaMi;
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
  printf "10\t%s\n" `cat REPORT_HePi | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "11\t%s\n" `cat REPORT_AeCa | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "12\t%s\n" `cat REPORT_HaMi | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "13\t%s\n" `cat REPORT_YeMi | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "14\t%s\n" `cat REPORT_BuEb | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
  printf "15\t%s\n" `cat REPORT_AgPh | grep "Total bytes" | awk '{ print $16 } '` >> NC_VALUES;
fi
#==============================================================================
###############################################################################
#==============================================================================
if [[ "$RUN_PROFILE" -eq "1" ]]; then


fi
#==============================================================================
###############################################################################
#==============================================================================
if [[ "$RUN_GC" -eq "1" ]]; then


fi
#==============================================================================
