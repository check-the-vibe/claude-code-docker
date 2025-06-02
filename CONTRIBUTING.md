# Contributing to Claude Code Docker

Thank you for your interest in contributing to Claude Code Docker! This project provides a Docker wrapper for Anthropic's Claude Code CLI.

## Getting Started

### Prerequisites

- Docker installed on your system
- Git for version control
- Basic knowledge of Docker and containerization

### Setting up the Development Environment

1. Fork the repository
2. Clone your fork:
   ```bash
   git clone https://github.com/your-username/claude-code-docker.git
   cd claude-code-docker
   ```
3. Build the Docker image:
   ```bash
   docker build -t claude-code-dev .
   ```

## How to Contribute

### Reporting Issues

- Check existing issues before creating a new one
- Use the issue templates when available
- Provide clear, detailed descriptions
- Include steps to reproduce for bugs
- Specify your environment (OS, Docker version, etc.)

### Submitting Changes

1. Create a new branch for your feature or fix:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. Make your changes following our coding standards

3. Test your changes:
   ```bash
   # Build and test the Docker image
   docker build -t claude-code-test .
   
   # Test basic functionality
   docker run --rm claude-code-test --help
   ```

4. Commit your changes with a clear commit message:
   ```bash
   git commit -m "feat: add your feature description"
   ```

5. Push to your fork and submit a pull request

### Pull Request Guidelines

- Fill out the pull request template completely
- Reference any related issues
- Include tests for new functionality
- Ensure the Docker image builds successfully
- Update documentation if needed
- Keep changes focused and atomic

## Coding Standards

### Dockerfile Best Practices

- Use specific base image versions (not `latest`)
- Minimize image layers where possible
- Run containers as non-root users
- Clean up package caches after installation
- Use `.dockerignore` to exclude unnecessary files
- Add helpful comments for complex operations

### Documentation

- Update README.md for user-facing changes
- Document new configuration options
- Include examples for new features
- Keep documentation clear and concise

## Testing

Before submitting a pull request:

1. Build the Docker image successfully:
   ```bash
   docker build -t claude-code-test .
   ```

2. Test basic functionality:
   ```bash
   # Test help command
   docker run --rm claude-code-test --help
   
   # Test with mounted volume (requires API key)
   docker run --rm -v $(pwd):/workspace -w /workspace claude-code-test
   ```

3. Test with different Docker configurations if applicable

## Questions and Support

- For questions about Claude Code itself, refer to [Anthropic's documentation](https://docs.anthropic.com/en/docs/claude-code)
- For Docker wrapper specific issues, create an issue in this repository
- For general Docker questions, consult Docker's documentation

## Attribution

This project wraps [Claude Code](https://docs.anthropic.com/en/docs/claude-code) by [Anthropic](https://www.anthropic.com/). All credit for the core functionality goes to Anthropic and their team.

## Code of Conduct

Please be respectful and professional in all interactions. We're building this together to help the community access Claude Code more easily.