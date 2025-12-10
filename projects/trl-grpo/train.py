"""
GRPO Training Script

Following the TRL GRPO quickstart:
https://huggingface.co/docs/trl/en/grpo_trainer
"""
from datasets import load_dataset, Dataset
from trl.trainer.grpo_trainer import GRPOTrainer
from trl.trainer.grpo_config import GRPOConfig
from trl.rewards.accuracy_rewards import accuracy_reward
from typing import cast

# Load the DeepMath-103K dataset
dataset = cast(Dataset, load_dataset("trl-lib/DeepMath-103K", split="train"))

config = GRPOConfig(
    report_to="wandb",
)
# Initialize GRPO trainer
trainer = GRPOTrainer(
    model="Qwen/Qwen2-0.5B-Instruct",
    reward_funcs=accuracy_reward, # pyright: ignore[reportArgumentType]
    train_dataset=dataset,
    args=config,
)

# Start training
trainer.train()

