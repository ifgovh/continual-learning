#!/bin/bash
#SBATCH -p IGIcuda1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=2
#SBATCH --gres=gpu:GTX1080Ti:1
#SBATCH --time=12:00:00
#SBATCH --mem=12G
#SBATCH --mail-user=guozhang.chen@tugraz.at
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --error=JobName.%J.err
#SBATCH --output=JobName.%J.out

cd $SLURM_SUBMIT_DIR

source /calc/guozhang/anaconda3/etc/profile.d/conda.sh

conda activate base

python main.py --si --c=0.1 --xdg=0.8 --experiment splitMNIST --scenario task --tasks