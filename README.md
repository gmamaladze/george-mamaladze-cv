# George Mamaladze CV

Professional CV of George Mamaladze, automatically converted to HTML and PDF formats.

## Formats Available

This repository automatically generates the CV in multiple formats:

- **Markdown**: [`cv.md`](cv.md) - Source format
- **HTML**: Generated automatically and deployed to GitHub Pages
- **PDF**: Two versions generated:
  - LaTeX-based PDF (high-quality typography)
  - HTML-based PDF (matches web styling)

## CI/CD Pipeline

The repository uses GitHub Actions to automatically:

1. **Convert** markdown to HTML and PDF on every push to main
2. **Deploy** HTML version to GitHub Pages
3. **Generate** downloadable artifacts for all formats
4. **Style** the output with professional CSS

### Workflow Triggers

- Push to `main` branch
- Pull requests to `main` branch  
- Manual workflow dispatch

### Artifacts Generated

After each workflow run, you can download:
- `cv-html` - Styled HTML version
- `cv-pdf` - Both LaTeX and HTML-generated PDF versions

## Styling

The HTML version uses custom CSS (`styles/cv.css`) for:
- Professional typography using Georgia/Times serif fonts
- Responsive design for web and mobile
- Print-optimized styling
- Consistent spacing and color scheme

## Accessing Your CV

- **Web Version**: Available at the GitHub Pages URL (deployed automatically)
- **Download PDFs**: Check the "Actions" tab for workflow artifacts
- **Source**: Edit `cv.md` and push to update all formats automatically

## Local Development

To preview your CV locally using Docker:

```bash
# Start Jekyll container
docker-compose up -d

# View your CV at http://localhost:4000
# LiveReload available at http://localhost:35729

# Stop the container when done
docker-compose down
```
