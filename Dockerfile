FROM runpod/pytorch:1.0.2-cu1281-torch280-ubuntu2204

WORKDIR /app

# Install uv for fast dependency management
RUN pip install --no-cache-dir uv

# Copy dependency files
COPY pyproject.toml ./
COPY uv.lock ./

# Install dependencies
RUN uv sync --frozen --no-dev

# Copy project code
COPY . .

# Default command (override in RunPod template)
CMD ["python", "--version"]

