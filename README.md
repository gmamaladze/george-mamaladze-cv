# George Mamaladze CV

Professional CV of George Mamaladze, built with Jekyll and exported to PDF.

## Formats Available

This repository automatically generates the CV in multiple formats:

- **Web**: Jekyll-rendered HTML deployed to GitHub Pages
- **PDF**: Generated from the Jekyll-built HTML using Puppeteer (headless Chrome)

## CI/CD Pipeline

The repository uses GitHub Actions to automatically:

1. **Build** the Jekyll site and deploy to GitHub Pages
2. **Generate** a PDF from the built HTML using Puppeteer (headless Chrome)
3. **Upload** the PDF as a workflow artifact

### Workflow Triggers

- Push to `main` branch
- Pull requests to `main` branch  
- Manual workflow dispatch

### Artifacts Generated

After each workflow run, you can download:
- `cv-pdf` - PDF generated from the web version

## Styling

The HTML version uses custom CSS in `media/gmamaladzecv-*.css` for:
- Professional typography and readable layout
- Screen and print specific styles

## Accessing Your CV

- **Web Version**: Available at the GitHub Pages URL (deployed automatically)
- **Download PDFs**: Check the "Actions" tab for workflow artifacts
- **Source**: Edit `index.md` and push to update

## Local Development

### Preview with Docker

To preview your CV locally using Docker:

```bash
# Start Jekyll container
docker-compose up -d

# View your CV at http://localhost:4000
# LiveReload available at http://localhost:35729

# Stop the container when done
docker-compose down
```

### Generate PDF Locally

To generate the PDF locally:

```bash
# Install Node.js dependencies
npm install

# Build Jekyll site for PDF
bundle exec jekyll build --config _config.yml --destination _site_pdf

# Generate PDF
npm run generate-pdf
```
