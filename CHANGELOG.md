# Changelog - GAN Freedom

## 2026-02-07

### Website Built
- Created full single-page website (index.html) with RTL Hebrew support
- Design: Heebo + Rubik fonts, warm green/olive/amber color scheme
- Sections: Hero, Who We Help, About, Activities (3 types), Numbers, Gallery, Donate, Contact, Footer
- Features: Image carousels with touch/swipe, lightbox gallery, scroll animations, responsive design
- Safari fix: Added -webkit-backdrop-filter prefix in 4 locations

### Image Management
- Copied selected images from Hebrew folders to English-named folders (GitHub Pages compatibility)
- soldiers-treats/: 30 images
- building-renovation/: 31 images

### Deployment
- Deployed to GitHub Pages at stp-ai.github.io/gan-freedom
- Later taken offline per user request (Pages disabled via API)

### Image Catalog
- Analyzed ALL 187 images across 4 folders using 12 parallel agents
- Created image-catalog.md with:
  - Full description, categories, face detection, website rating (1-5) per image
  - 47 images flagged with visible faces
  - 21 top picks (rating 5) identified
  - Before/after pairs for renovation story
  - Near-duplicate pairs identified
  - Filter quick-reference lists by category (food, manicure, supplies, renovation, etc.)

### Face Blur Demo
- Installed sharp library
- Demonstrated face blurring on WA0527.jpg (volunteer with tiles)
- Demo file saved: demo-blurred-face.jpg
- Approach: extract region, blur with sharp, composite back
- For scale: needs face-api.js for automatic detection (not yet built)

### Project Setup
- npm initialized with sharp dependency
- Created CLAUDE.md with project structure and guidelines
- Created questionnaire guide and content completion guide
