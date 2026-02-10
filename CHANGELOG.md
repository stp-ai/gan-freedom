# Changelog - GAN Freedom

## 2026-02-10

### Content Rewrite - War Victims Focus
- Rewrote entire website content: removed all soldier references (~50 mentions)
- New narrative: victims of Swords of Iron war, Petah Tikva municipality partnership, donors, volunteers
- Added "Partners & Thanks" section (municipality, donors, volunteers)
- Created new food/donations carousel (20 images from soldiers-treats/)
- Restructured 3 activity sections: Renovation, Food & Donations, Pampering

### Image Fixes
- Fixed 29 broken images (copied from Hebrew source folders to English folders)
- Fixed carousel cropping: object-fit cover -> contain for portrait images
- Increased carousel heights: 700px desktop, 500px tablet, 400px mobile
- Removed 6 misplaced food/logistics images from renovation carousel
- Replaced with 6 actual renovation photos (finished apartments, night work, etc.)

### Legal Review
- Analyzed website for legal compliance before publishing
- Identified 7 issues: photos consent, privacy policy, accessibility, donation wording, municipality mention, copyright, nonprofit registration display
- Drafted message to client with lawyer checklist and missing details list

### Deployment
- Re-enabled GitHub Pages, site live at stp-ai.github.io/gan-freedom

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
