# Wallora — Wallpaper Gallery

A responsive wallpaper gallery made with HTML, CSS, and vanilla JavaScript, served by Nginx in Docker.

## Run without Docker
1. Open `index.html` in a modern browser.
2. Internet access is needed for Unsplash wallpaper images and Google Fonts.

## Run with Docker
Make sure Docker Desktop (or Docker Engine) is installed and running. Open a terminal in this folder.

### Build the image
```bash
docker build -t wallora-wallpaper-gallery .
```

### Start the container
```bash
docker run --name wallora -p 8080:80 -d wallora-wallpaper-gallery
```

Open http://localhost:8080 in your browser.

### Or use Docker Compose
```bash
docker compose up --build -d
```

Open http://localhost:8080. To stop it:
```bash
docker compose down
```

## Features
- Search by title, category, author, or keyword
- Filter by category
- Preview images in a modal
- Download wallpapers (the browser may open the image in a new tab if cross-origin downloading is blocked)
- Save favorites during the current page session
- Responsive mobile and desktop layout

## Customize
Edit the `wallpapers` array in `index.html` to add or replace images. This site loads images and fonts from external services, so the visitor's browser needs internet access. Respect image license and attribution requirements.
# using-ECS-and-ECR
