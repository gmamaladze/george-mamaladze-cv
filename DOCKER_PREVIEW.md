# Jekyll Docker Live Preview Setup

This setup allows you to preview your Jekyll site using the official Jekyll Docker container with live reload functionality.

## Quick Start

1. **Start the Jekyll container** (first time with dependency installation):
   ```powershell
   .\preview-docker.ps1 start -Setup
   ```

2. **Access your site**:
   - Main site: http://localhost:4000
   - LiveReload: http://localhost:35729 (automatic page refresh on changes)

3. **Stop the container**:
   ```powershell
   .\preview-docker.ps1 stop
   ```

## Available Commands

- `.\preview-docker.ps1 start` - Start Jekyll container in background
- `.\preview-docker.ps1 start -Setup` - Start with dependency installation (use for first run)
- `.\preview-docker.ps1 stop` - Stop the container
- `.\preview-docker.ps1 restart` - Restart the container
- `.\preview-docker.ps1 logs` - Show container logs
- `.\preview-docker.ps1 logs -Follow` - Watch live logs
- `.\preview-docker.ps1 shell` - Open shell inside the container
- `.\preview-docker.ps1 clean` - Remove container and volumes
- `.\preview-docker.ps1 help` - Show help

## How It Works

- Uses the official `jekyll/jekyll:latest` Docker image
- Mounts your current directory into the container
- Serves your site with live reload enabled
- Automatically installs dependencies from your Gemfile
- Watches for file changes and rebuilds the site

## Files Created

- `docker-compose.yml` - Docker Compose configuration
- `Gemfile` - Ruby/Jekyll dependencies
- `preview-docker.ps1` - Management script
- `DOCKER_PREVIEW.md` - This documentation

## Troubleshooting

If you encounter issues:

1. **Check Docker is running**: Make sure Docker Desktop is started
2. **View logs**: `.\preview-docker.ps1 logs -Follow`
3. **Restart container**: `.\preview-docker.ps1 restart`
4. **Clean rebuild**: `.\preview-docker.ps1 clean` then `.\preview-docker.ps1 start -Setup`

## Live Development

Once running, any changes to your Markdown files or Jekyll configuration will automatically trigger a rebuild and refresh your browser page (if LiveReload is enabled in your browser).

The container automatically:
- Installs gems from Gemfile
- Builds your site
- Starts the Jekyll server
- Enables live reload
- Watches for file changes