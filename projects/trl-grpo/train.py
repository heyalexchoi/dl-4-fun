"""
GRPO Training Script

Following the TRL GRPO quickstart:
https://huggingface.co/docs/trl/en/grpo_trainer
"""
from datasets import load_dataset
from trl import GRPOTrainer
from trl.rewards import accuracy_reward

# Load the DeepMath-103K dataset
dataset = load_dataset("trl-lib/DeepMath-103K", split="train")

# Initialize GRPO trainer
trainer = GRPOTrainer(
    model="Qwen/Qwen2-0.5B-Instruct",
    reward_funcs=accuracy_reward,
    train_dataset=dataset,
    report_to="wandb",
)

# Start training
trainer.train()

