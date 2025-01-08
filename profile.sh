#!/bin/bash
LOG_FILE="dopamine_dqn"
GIN_FILE="dopamine/jax/agents/dqn/configs/dqn.gin"

echo launch train ${LOG_FILE}
source env/bin/activate
python3 dopamine/discrete_domains/train.py --base_dir ./logs/${LOG_FILE}\
 --gin_files $GIN_FILE\
  &> ./logs/${LOG_FILE}.out &
wait