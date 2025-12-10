# In your pod startup script or on first connect:
cd /workspace  # This is the persistent volume
git clone https://${GITHUB_PAT}@github.com/heyalexchoi/dl-4-fun.git
cd dl-4-fun

# Install uv to volume so it persists
export CARGO_HOME=/workspace/.cargo
export UV_CACHE_DIR=/workspace/.uv-cache
curl -LsSf https://astral.sh/uv/install.sh | sh

# Create venv on volume
uv venv .venv
source .venv/bin/activate

# install dependencies
uv sync