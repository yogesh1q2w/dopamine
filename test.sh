#!/bin/bash
LOG_FILE="dopamine_wo_warmupsteps_actionselect_wotf"

echo "launch train dqn-dopamine"
source env/bin/activate
python3 dopamine/discrete_domains/train.py --base_dir ./logs/${LOG_FILE}\
 --gin_files dopamine/jax/agents/dqn/configs/dqn.gin\
  &> ./logs/${LOG_FILE}.out &
wait