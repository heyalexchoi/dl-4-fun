# DL 4 Fun

A container for small deep-learning learning projects and experiments.

## Structure

- `projects/` - Individual learning projects, each self-contained
- `shared/` - Shared utilities (add only when needed)

## uv
Install uv if adding deps locally
`curl -LsSf https://astral.sh/uv/install.sh | sh`

## Build
```bash
# login
docker login

# build, tag, and push (use buildx for proper multi-platform support)
docker buildx build --platform linux/amd64 -t heyalexchoi/dl4fun:latest --push .
```

## Projects

### [trl-grpo](./projects/trl-grpo/)

GRPO (Group Relative Policy Optimization) training following the [TRL quickstart](https://huggingface.co/docs/trl/en/grpo_trainer).

## Deployment

expects `WANDB_API_KEY` env var to be set in the pod



