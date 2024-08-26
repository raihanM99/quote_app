# Quote App

Welcome to the Quote App! 🎉 This is a simple project designed to explore and learn the benefits of Turbo Rails in modern web applications.

## Overview

This application is based on a tutorial from [HotRails.dev](https://www.hotrails.dev). However, I've made a few adjustments to align with the latest technologies and practices:

- **Rails Version:** The tutorial uses `Rails 7.0.0`, but this project is built with `Rails 7.2.1`.
- **Project Setup:** While the tutorial generates a new project with `rails new project-name --css=sass --javascript=esbuild --database=postgresql`, this project is set up using Docker with default Rails settings.
- **Technology Stack:**
  - **Asset Management:** Instead of `cssbundling-rails` and `jsbundling-rails`, this project uses `importmap-rails` for JavaScript and `turbo-rails` for enhanced performance.
  - **JavaScript Framework:** The project integrates `stimulus-rails` to handle client-side interactions.

## Features

- **Turbo Rails Integration:** Enjoy the benefits of Turbo Drive and Turbo Frames for faster and more efficient page updates.
- **Stimulus.js:** Enhance your application's interactivity with minimal JavaScript.

## Acknowledgments
- [HotRails.dev](https://www.hotrails.dev) for the inspiring tutorial.
- Rails Team for creating an amazing framework.
