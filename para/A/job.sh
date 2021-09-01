#!/bin/bash
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=48
#SBATCH --mem-per-cpu=3700
#SBATCH --time=08:00:00
module purge
module load GCC/9.3.0  OpenMPI/4.0.3 Siesta/4.1.5
srun siesta < jt.fdf > jt.out

