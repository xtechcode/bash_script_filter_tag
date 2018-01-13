#!/bin/sh
clear

rm listofTV listofTV2
rm -r rxg_filter_results 2>error
mkdir rxg_filter_results 2>error


read -p "Which DeviceType Do you want to filter ? TV SAT DVD AMP etc ? " select 
case "$select" in 
  sat|SAT ) grep -i '<DeviceType>SAT</DeviceType>' *.xml >> listofTV 2>error;; 
  tv|TV ) grep -i '<DeviceType>TV</DeviceType>' *.xml >> listofTV 2>error;;
  amp|AMP ) grep -i '<DeviceType>AMP</DeviceType>' *.xml >> listofTV 2>error;;
  tuner|TUNER ) grep -i '<DeviceType>TUNER</DeviceType>' *.xml >> listofTV 2>error;;
  dvd|DVD ) grep -i '<DeviceType>DVD</DeviceType>' *.xml >> listofTV 2>error;;
  *) clear ; echo "NOT POSSIBLE or email to Romain xxx@uei.com, Bye for now .:." ; exit 1 ;;
esac

clear
#grep -i '<DeviceType>TV</DeviceType>' *.xml >> listofTV 2>/dev/null
cut -d ':' -f1 listofTV > listofTV2

echo ""
echo ""
total_result=`ls rxg_filter_results | wc -l`
echo "-------------------------------------------------------------------------------------------------------------- "
echo "Welcome to rxg_filter!!"
echo
# echo "You choosed to filter all '<DeviceType>$select</DeviceType>' from all the .xml files in this directory."
echo
echo -e "You choosed to filter all '<DeviceType>\033[1;33m$select\033[0m</DeviceType>' from all the .xml files in this directory. "

echo "Please remember : "
echo 
echo -e "1 : You need to put \033[1;31m \"rxg_filter.sh\" \033[0m in the same directory as the files you want to be filtered !"
echo 
echo "2 : The Filtered Results will be stored in the directory named \"rxg_filter_results\"." 
echo
echo -e "3 : (If the program is not running correctly :  You may need to make \033[1;31m \"rxg_filter.sh\" \033[0m as an executable,\n if so, type in the terminal : \033[1;31m chmod +x rxg_filter.sh \033[0m)"
echo 
echo -e "4 : \033[41mFILES NAMES YOU WANT TO BE FILTERED SHOULD BE NAMED WITHOUT ANY SPACE !!!\033[0m"
echo  
echo -e "5 : If the Program freeze you may have the problem mentioned above (Step 4),\n therefore do \033[1;31m ctr + C \033[0m to kill \033[1;31m \"rxg_filter.sh\" \033[0m \n To solve this issue please check the name of the last file in \"rxg_filter_results\" and correct the mistake. "
echo
echo -e  "Any Question ? email Romain at \033[1;32m xxx@uei.com\033[0m or \033[1;32m xxx@gmail.com\033[0m "
echo 
echo -e  "Now please press \033[33m\033[5mEnter\033[0m\033[0m and Enjoy a coffee while the script is doing its job  :-P "
echo "-------------------------------------------------------------------------------------------------------------- "
echo "   \\         __------~~-,"
echo "    \\      ,'            ,"
echo "          /               \\"
echo "         /                :"
echo "        \|                  '"
echo "        \|                  \|"
echo "        \|                  \|"
echo "         \|   _--           \|"
echo "         _\| =-.     .-.   \|\|"
echo "         o\|/o/       _.   \|"
echo "         /  ~          \\ \|"
echo "       (____@)  ___~    \|"
echo "          \|_===~~~.\`    \|"
echo "       _______.--~     \|"
echo "       \\________       \|"
echo "                \\      \|"
echo "              __/-___-- -__"
echo ""
echo ""
echo ""
echo ""
echo ""

echo -e  "--------------   Press \033[33m\033[5mENTER\033[0m\033[0m TO START FILTERING ------------------  "

read -p "" start 

case "$start" in 

esac

for i in `cat listofTV2`
do
  grep -o '<DeviceType>TV</DeviceType>' $i >> rxg_filter_results/$i 2>error
  grep -o '<EDID>.*</EDID>' $i >> rxg_filter_results/$i 2>error
  grep -o '<EDIDPresent>.*</EDIDPresent>' $i >> rxg_filter_results/$i 2>error
  grep -o '<EdidMfg>.*</EdidMfg>' $i >> rxg_filter_results/$i 2>error
  grep -o '<EdidMonitorName>.*</EdidMonitorName>' $i >> rxg_filter_results/$i 2>error 
 
var1=---
var2=---------
var3=----------------
var4=-----------------------
var5=------------------------------
var6=------------------------------------- 
var7=-----------------------------------------------
var8=----------------------------------------------------------
var9= echo -e  "------------------\033[31mONE FOR ALL\033[0m\033[33m\033[5m Romain Gros \033[0m\033[0m\033[1mxxx@uei.com\033[0m------------------  "
   
   for search in $var1 $var2 $var3 $var4 $var5 $var6 $var7 $var8 $var9 $var8  $var7 $var6 $var5 $var4 $var3 $var2
    do
      echo    $search  !  
    for lol in col
             do
              for mm in lol
        do
sleep 0.001
                        done
                 done
        done
done



echo ""
echo ""
total_result=`ls rxg_filter_results | wc -l`
echo "-------------------------------------------------------------------------------------------------------------- "
echo ""
echo ""
echo ""
echo -e "All Files with '<DeviceType>\033[1;33m$select\033[0m</DeviceType>' are filtered, You have a Total of \033[31m$total_result results\033[0m!"
echo ""
echo "Would you like to go to see the filtered files ?"
echo ""
echo -e  "Press \033[33m\033[5mEnter\033[0m\033[0m for \033[31mYes\033[0m!."
echo "or"
echo -e  "Press \033[1;33mN\033[0m and \033[33m\033[5mENTER\033[0m\033[0m to \033[1;32m Exit .:.\033[0m"
echo ""
echo ""
echo ""
echo "-------------------------------------------------------------------------------------------------------------- "
echo -e  "Any Question ? email Romain at \033[1;32m xxx@uei.com\033[0m or \033[1;32m xxx@gmail.com\033[0m "
echo "-------------------------------------------------------------------------------------------------------------- "
echo "   \\         __------~~-,"
echo "    \\      ,'            ,"
echo "          /               \\"
echo "         /                :"
echo "        \|                  '"
echo "        \|                  \|"
echo "        \|                  \|"
echo "         \|   _--           \|"
echo "         _\| =-.     .-.   \|\|"
echo "         o\|/o/       _.   \|"
echo "         /  ~          \\ \|"
echo "       (____@)  ___~    \|"
echo "          \|_===~~~.\`    \|"
echo "       _______.--~     \|"
echo "       \\________       \|"
echo "                \\      \|"
echo "              __/-___-- -__"
echo "             /            _ \\"




# echo Would you like to go to see the filtered files ?
read -p " " choice 

case "$choice" in 
  y|Y ) clear ; ls rxg_filter_results;;
  n|N ) clear ; echo ""; echo "Ok Fair Enough ! Bye For Now - !!!"; echo ""; echo ""; echo "";; 
  * ) clear ; ls rxg_filter_results;;
esac
