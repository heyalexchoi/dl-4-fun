# TRL GRPO Training

Group Relative Policy Optimization (GRPO) training following the [TRL quickstart guide](https://huggingface.co/docs/trl/en/grpo_trainer).

## Overview

This project trains a small language model (Qwen2-0.5B-Instruct) using GRPO on the DeepMath-103K dataset.

## Running

From the project root:

```bash
# Single GPU
accelerate launch projects/trl-grpo/train.py

# Multi-GPU
accelerate launch --multi_gpu projects/trl-grpo/train.py
```

## Notes

- Model: Qwen/Qwen2-0.5B-Instruct (0.5B parameters)
- Dataset: DeepMath-103K
- Reward function: accuracy_reward
- Training time: ~1 day on 8 GPUs (per TRL docs)

## Results

_Add training results, metrics, and learnings here as you experiment._

