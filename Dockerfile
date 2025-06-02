FROM node:22-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    ripgrep \
    curl \
    build-essential \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

# Install Claude Code CLI globally as root first
RUN npm install -g @anthropic-ai/claude-code

# Create a non-root user
RUN useradd -m -s /bin/bash claude-user

# Set working directory and switch to non-root user
WORKDIR /home/claude-user
USER claude-user

# Create config directory
RUN mkdir -p /home/claude-user/.claude

# Default command
ENTRYPOINT ["claude"]
