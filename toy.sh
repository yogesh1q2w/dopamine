#!/bin/bash
echo "launch train dqn-dopamine"
source env/bin/activate
python3 dopamine/discrete_domains/train.py --base_dir ./logs/dopamine_toy --gin_files dopamine/jax/agents/dqn/configs/dqn_toy.gin &> ./logs/dopamine_toy.out &
wait