#!/bin/bash

# the script accepts one argument to indidate the output file where the perf results are appended to. 
# e.g., ./run.sh perf-result-file 
sleep 2h;


for j in 1 2 3
 do 
  for i in 2 4 8 16
   do
	case $i in 
	2) Core_choice=(4,10)
	echo "=== test run with $i threads ===" >>Bodytrack_out_With_HT.txt 
        taskset -c $Core_choice perf stat -e duration_time -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e instructions,cycles -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e L1-dcache-load-misses,L1-dcache-loads -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

        taskset -c $Core_choice perf stat -e rE124,r2124 -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3
	 
        taskset -c $Core_choice perf stat -e LLC-load-misses,LLC-loads -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	;;
	

	4) Core_choice=(4,10,1,11)
	echo "=== test run with $i threads ===" >>Bodytrack_out_With_HT.txt
         taskset -c $Core_choice perf stat -e duration_time -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e instructions,cycles -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e L1-dcache-load-misses,L1-dcache-loads -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

        taskset -c $Core_choice perf stat -e rE124,r2124 -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3
	 
        taskset -c $Core_choice perf stat -e LLC-load-misses,LLC-loads -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	;;

	8) Core_choice=(4,10,1,11,2,12,3,13)
	echo "=== test run with $i threads ===" >>Bodytrack_out_With_HT.txt
         taskset -c $Core_choice perf stat -e duration_time -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e instructions,cycles -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e L1-dcache-load-misses,L1-dcache-loads -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

        taskset -c $Core_choice perf stat -e rE124,r2124 -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3
	 
        taskset -c $Core_choice perf stat -e LLC-load-misses,LLC-loads -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3
	
	;;

	16) Core_choice=(4,10,1,11,2,12,3,13,0,14,5,15,6,16,7,17)
	echo "=== test run with $i threads ===" >>Bodytrack_out_With_HT.txt
         taskset -c $Core_choice perf stat -e duration_time -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e instructions,cycles -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e L1-dcache-load-misses,L1-dcache-loads -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

        taskset -c $Core_choice perf stat -e rE124,r2124 -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3
	 
        taskset -c $Core_choice perf stat -e LLC-load-misses,LLC-loads -o Bodytrack_out_With_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	;;

	esac
	
      done
      
      for i in 1 2 4 8
      do
	case $i in 
	1) Core_choice=(4)
	echo "=== test run with $i threads ===" >>Bodytrack_out_With_HT.txt
	taskset -c $Core_choice perf stat -e duration_time -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e instructions,cycles -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e L1-dcache-load-misses,L1-dcache-loads -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

        taskset -c $Core_choice perf stat -e rE124,r2124 -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3
	 
        taskset -c $Core_choice perf stat -e LLC-load-misses,LLC-loads -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3
	;;
	

	2) Core_choice=(4,1)
	echo "=== test run with $i threads ===" >>Bodytrack_out_With_HT.txt
       taskset -c $Core_choice perf stat -e duration_time -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e instructions,cycles -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e L1-dcache-load-misses,L1-dcache-loads -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

        taskset -c $Core_choice perf stat -e rE124,r2124 -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3
	 
        taskset -c $Core_choice perf stat -e LLC-load-misses,LLC-loads -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3
	
	;;

	4) Core_choice=(4,1,2,3)
	echo "=== test run with $i threads ===" >>Bodytrack_out_With_HT.txt
        taskset -c $Core_choice perf stat -e duration_time -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e instructions,cycles -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e L1-dcache-load-misses,L1-dcache-loads -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

        taskset -c $Core_choice perf stat -e rE124,r2124 -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3
	 
        taskset -c $Core_choice perf stat -e LLC-load-misses,LLC-loads -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3
	
	;;

	8) Core_choice=(4,1,2,3,0,5,6,7)
	echo "=== test run with $i threads ===" >>Bodytrack_out_With_HT.txt
        taskset -c $Core_choice perf stat -e duration_time -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e instructions,cycles -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

	taskset -c $Core_choice perf stat -e L1-dcache-load-misses,L1-dcache-loads -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3

        taskset -c $Core_choice perf stat -e rE124,r2124 -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3
	 
        taskset -c $Core_choice perf stat -e LLC-load-misses,LLC-loads -o Bodytrack_out_WithOut_HT.txt $1 --append ./bodytrack sequenceB_261 4 20 4000 5 2 $i 4
	taskset -c $Core_choice ./clean_L3


	;;

	esac
	
      done

done
