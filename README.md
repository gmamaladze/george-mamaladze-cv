# George Mamaladze CV

Professional CV of George Mamaladze, built with Jekyll.
Claude 4.7 has been used but in a "Gini in the bottle way" (see The interview with Kent Beck).

## Things to remember (to future George)
- `index.md` contains all the text and formating
- Common markdown rules and conventions are used except:
- `code` is used for dates that need to be fixed width
- CSS is used extensively `gmamaladzecv-screen.css` for web and `gmamaladzecv-print.css` for PDF respectively.
- Bump the version according to "semver". Significant rework bumps major.
- Commit directly to main. Every push results in deployment.
- Test locally before pushing (see below).

## CI/CD Pipeline
The repository uses GitHub Actions to automatically:
1. **Build** the Jekyll site and deploy to GitHub Pages
2. **Generate** a PDF from the built HTML using Puppeteer (headless Chrome). `generate-pdf.js` is used for generation.
3. **Upload** the PDF is uploaded to GitHub Pages

## Local Development

To preview your CV locally using Docker:

```bash
# Start Jekyll container
docker-compose up --build

# View your CV at http://localhost:4000
# Website will live reload
# To preview print version press ctrl+p

# Stop the container when done
docker-compose down
```

- Local version does not generate (re-generate) PDF. Use ctrl+p to preview the pront version. The download link goes into the void.
- Local version does not display the version number, a placeholder is used instead.
