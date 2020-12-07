#!/bin/bash
#SBATCH --job-name="CsPbBr3-017"
#SBATCH --output="CsPbBr3-017.out"
#SBATCH --partition=compute
#SBATCH --nodes=3
#SBATCH --ntasks-per-node=24
#SBATCH --export=ALL
#SBATCH -t 05:00:00

#This job runs with 3 nodes, 24 cores per node for a total of 72 cores.
export EXE=`which pw.x`
mpirun -np 72 $EXE < CsPbBr3-017.in > output
 