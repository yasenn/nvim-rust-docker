# nvim-rust-docker
Nvim-based IDE for rust development in Docker

## Demo

TODO: Asciinema link

  
## Usage/Examples

```
vimrust <filename.rs>
```

  
## Features

- `Alpine`-based docker
- Edit files 
- Build `rust` projects inside Docker
- Linux-only
- Batteries included:
  - fd
  - shellcheck
  - bat
  - fzf
  - ripgrep
  - skim

  
## Deployment

TODO: To deploy this project run

```bash
  make deploy
```

  
## Run Locally

Clone the project

```bash
  git clone https://github.com/yasenn/nvim-rust-docker
```

Go to the project directory

```bash
  cd nvim-rust-docker
```

Build the Docker image

```bash
  make build
```

Run IDE

```
./nvim-rust <filename.rs>
```
  
## Documentation

TODO

  
## Acknowledgements

 - [Cason Adams](https://github.com/casonadams)
 - [Dave Hulihan](https://github.com/dhulihan)

Thanks for the idea from their project [casonadams/nvim-container: neovim in a container with coc all setup to work with rust and python.](https://github.com/casonadams/nvim-container)
