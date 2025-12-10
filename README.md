# DL 4 Fun

A container for small deep-learning learning projects and experiments.

## Structure

- `projects/` - Individual learning projects, each self-contained
- `shared/` - Shared utilities (add only when needed)


## Runpod setup

**Expects `GITHUB_PAT` to be set in ENV**

```bash
cd /workspace  # This is the persistent volume
git clone https://${GITHUB_PAT}@github.com/heyalexchoi/dl-4-fun.git
cd dl-4-fun

# Install uv to volume so it persists
export CARGO_HOME=/workspace/.cargo
export UV_CACHE_DIR=/workspace/.uv-cache
curl -LsSf https://astral.sh/uv/install.sh | sh

# Create venv on volume
uv venv
source .venv/bin/activate

# install dependencies
uv sync
```


## Build
Actually not sure if I need docker. trying using the runpod pytorch image
`runpod/pytorch:1.0.2-cu1281-torch280-ubuntu2404`

GITHUB_PAT in env vars

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



