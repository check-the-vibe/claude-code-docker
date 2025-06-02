# Claude Code Docker

A Docker wrapper for [Anthropic's Claude Code CLI](https://docs.anthropic.com/en/docs/claude-code) that provides a consistent Claude experience in containerized environments.

## Overview

This project packages the [Claude Code CLI](https://github.com/anthropics/claude-code) created by [Anthropic](https://www.anthropic.com/) into a Docker container. This is useful for systems where you want a consistent Claude experience but can't install the CLI directly.

## Prerequisites

- Docker installed on your system
- An Anthropic API key with Claude access

## Quick Start

### Build the Docker image

```bash
docker build -t claude-code .
```

### Run Claude Code in a container

```bash
# Interactive mode with API key
docker run -it --rm \
  -e ANTHROPIC_API_KEY=your_api_key_here \
  -v $(pwd):/workspace \
  -w /workspace \
  claude-code
```

### Using with docker-compose

Create a `docker-compose.yml` file:

```yaml
version: '3.8'
services:
  claude-code:
    build: .
    environment:
      - ANTHROPIC_API_KEY=${ANTHROPIC_API_KEY}
    volumes:
      - .:/workspace
    working_dir: /workspace
    stdin_open: true
    tty: true
```

Then run:

```bash
export ANTHROPIC_API_KEY=your_api_key_here
docker-compose run --rm claude-code
```

## Configuration

The container creates a `.claude` directory in the user's home directory for storing configuration. You can mount your local Claude configuration:

```bash
docker run -it --rm \
  -e ANTHROPIC_API_KEY=your_api_key_here \
  -v $(pwd):/workspace \
  -v ~/.claude:/home/claude-user/.claude \
  -w /workspace \
  claude-code
```

## Security Considerations

- The container runs as a non-root user (`claude-user`) for security
- Your API key is passed as an environment variable - be careful not to expose it in logs
- The container has access to the mounted workspace directory

## Original Project

This Docker wrapper is based on [Claude Code](https://docs.anthropic.com/en/docs/claude-code) by [Anthropic](https://www.anthropic.com/). For complete documentation, installation instructions, and support, please refer to:

- [Official Claude Code Documentation](https://docs.anthropic.com/en/docs/claude-code)
- [Claude Code GitHub Repository](https://github.com/anthropics/claude-code)

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.