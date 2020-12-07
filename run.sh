#!/bin/bash
#SBATCH --job-name="CsPbBr3"
#SBATCH --output="CsPbBr3.%j.%N.out"
#SBATCH --partition=compute
#SBATCH --nodes=3
#SBATCH --ntasks-per-node=24
#SBATCH --export EXE=`which pw.x'
#SBATCH -t 05:00:00

#This job runs with 3 nodes, 24 cores per node for a total of 72 cores.

mpirun -np 72 $EXE < CsPbBr3.in > output
 