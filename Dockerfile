FROM runpod/pytorch:1.0.2-cu1281-torch280-ubuntu2204

WORKDIR /app

# Install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /usr/local/bin/uv

# Copy dependency files
COPY pyproject.toml uv.lock ./

# Install dependencies (with cache mount for speed)
RUN --mount=type=cache,target=/root/.cache/uv \
    uv sync --frozen --no-dev

# Make venv the default Python
ENV PATH="/app/.venv/bin:$PATH"

# Copy project code
COPY . .

CMD [ "/start.sh" ]

