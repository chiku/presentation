# Markdown-to-HTML Presentation Builder

Easily generate HTML presentations from Markdown files using [remark](https://github.com/gnab/remark).

This tool concatenates Markdown files from the `_slides` directory in alphabetical order and embeds the result into a template (`presentation.html.template`) to produce a final presentation file: `presentation.html`.

## Features

- Simple workflow powered by Ruby and Rake
- Uses [remark](https://github.com/gnab/remark) for in-browser slide rendering
- Markdown-based slides — one file per slide
- Alphabetical ordering of slides for predictable structure

## Getting Started

### Prerequisites

- Ruby (install via [rbenv](https://github.com/rbenv/rbenv) or your package manager)
- Bundler

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/chiku/presentation.git
    cd presentation
    ```

2. Install dependencies:

    ```bash
    bundle install
    ```

### Creating Slides

- Add `.markdown` files inside the `_slides` directory.
- Each file represents one slide.
- Files are processed in **alphabetical order** to determine slide sequence.

### Building the Presentation

Generate the `presentation.html` file:

```bash
bundle exec rake
```

Open the resulting file directly in your browser, or serve it over HTTP:

```bash
bundle exec rackup
# Then visit http://localhost:9292/presentation.html
```

## License

This project is licensed under the [MIT License](https://github.com/chiku/presentation/blob/master/LICENSE).

remark is also released under the [MIT License](https://github.com/gnab/remark/blob/develop/LICENSE).
