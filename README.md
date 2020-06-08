## Status
* ![Build and Push Docker Images](https://github.com/atton/dockerfiles/workflows/Build%20and%20Push%20Docker%20Images/badge.svg)

## Public Docker Images
* [atton/latex-make](https://hub.docker.com/r/atton/latex-make)
  * Generate PDF using LaTeX with Makefile (JST: Japan Standard Time)
* [atton/webpage-title](https://hub.docker.com/r/atton/webpage-title)
  * Get webpage title using chromium-browser

## How to use
* atton/webpage-title
  * docker run --rm atton/webpage-title 'https://google.com'
    * => Google
  * docker run --rm atton/webpage-title 'https://attonblog.blogspot.com/2020/02/neovim-deoplete-kebab-case-completion.html'
    * => atton.blog: neovim + deoplete で kebab-case の補完をする
