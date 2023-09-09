# Packages

This page features a list of core packages. **This page is auto-generated.**

## [bat.yaml](https://github.com/sharkdp/bat)

 A cat(1) clone with wings.
```yaml
pkg: bat
url: https://github.com/sharkdp/bat
desc: A cat(1) clone with wings.
clone: true
collection: pkg
install:
    - cargo build -r --locked bat
pack:
    - path: target/release/bat
      type: bin
```

## [cbonsai.yaml](https://gitlab.com/jallbrit/cbonsai)

 a bonsai tree generator written in C.
```yaml
pkg: cbonsai
url: https://gitlab.com/jallbrit/cbonsai
desc: a bonsai tree generator written in C.
clone: true
collection: pkg
install:
    - make cbonsai
pack:
    - path: cbonsai
      type: bin
```

## [exa.yaml](https://github.com/ogham/exa)

 A modern replacement for ls.
```yaml
pkg: exa
url: https://github.com/ogham/exa
desc: A modern replacement for ls.
clone: true
collection: pkg
install:
    - cargo build --release
pack:
    - path: ./target/release/exa
      type: bin
```

## [fzf.yaml](https://github.com/junegunn/fzf)

 fzf is a general-purpose command-line fuzzy finder.
```yaml
pkg: fzf
url: https://github.com/junegunn/fzf
desc: fzf is a general-purpose command-line fuzzy finder.
clone: true
collection: pkg
install:
    - go build -ldflags "-s -w -X main.version=$version -X main.revision=go-get"
pack:
    - path: fzf
      type: bin
```

## [gh.yaml](https://github.com/cli/cli)

 Github's official command line tool
```yaml
pkg: gh
url: https://github.com/cli/cli
desc: Github's official command line tool
clone: true
collection: pkg
install:
    - make install prefix=~/.hayashi/pack
```

## [hayashi.yaml](https://github.com/crispybaccoon/hayashi)

 a tiny distro-independent package manager written in Go.
```yaml
pkg: hayashi
url: https://github.com/crispybaccoon/hayashi
desc: a tiny distro-independent package manager written in Go.
clone: true
collection: pkg
install:
    - make
update:
    - make clean; make
    - unlink ~/.hayashi/pack/bin/hayashi
pack:
    - path: hayashi
      type: bin
```

## [lazygit.yaml](https://github.com/jesseduffield/lazygit)

 simple terminal UI for git commands
```yaml
pkg: lazygit
url: https://github.com/jesseduffield/lazygit
desc: simple terminal UI for git commands
clone: true
collection: pkg
install:
    - go build .
pack:
    - path: lazygit
      type: bin
```

## [lime.yaml](https://github.com/crispybaccoon/lime)

 a tiny zsh configuration manager.
```yaml
pkg: lime
url: https://github.com/crispybaccoon/lime
desc: a tiny zsh configuration manager.
clone: true
collection: pkg
install:
    - echo "add \`export ZSH="$HOME/.hayashi/repo/lime"\`"
    - echo 'and `source $ZSH/lime.sh` to your `~/.zshrc`'
update:
    - ./tools/upgrade.sh && hayashi changelog lime
```

## [neofetch.yaml](https://github.com/dylanaraps/neofetch)

 A command-line system information tool written in bash 3.2+
```yaml
pkg: neofetch
url: https://github.com/dylanaraps/neofetch
desc: A command-line system information tool written in bash 3.2+
clone: true
collection: pkg
install:
    - make PREFIX=~/.hayashi/pack install
```

## [neovim.yaml](https://github.com/neovim/neovim)

 Vim-fork focused on extensibility and usability.
```yaml
pkg: neovim
url: https://github.com/neovim/neovim
desc: Vim-fork focused on extensibility and usability.
clone: true
collection: pkg
install:
    - make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/.hayashi/pack"
    - make install
remove:
    - cmake --build build/ --target uninstall
update:
    - rm build -r
    - make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/.hayashi/pack"
    - make install
```

## [ninja.yaml](https://github.com/ninja-build/ninja)

 a small build system with a focus on speed
```yaml
pkg: ninja
url: https://github.com/ninja-build/ninja
desc: a small build system with a focus on speed
clone: true
collection: pkg
install:
    - cmake -Bbuild-cmake
    - cmake --build build-cmake
pack:
    - path: build-cmake/ninja
      type: bin
```

## [niru.yaml](https://github.com/crispybaccoon/niru)

 a command line config manager built in rust.
```yaml
pkg: niru
url: https://github.com/crispybaccoon/niru
desc: a command line config manager built in rust.
clone: true
collection: pkg
install:
    - cargo build -r
pack:
    - path: target/release/niru
      type: bin
```

## [ohmyzsh.yaml](https://github.com/ohmyzsh/ohmyzsh)

 A delightful framework for managing your zsh configuration.
```yaml
pkg: ohmyzsh
url: https://github.com/ohmyzsh/ohmyzsh
desc: A delightful framework for managing your zsh configuration.
clone: true
collection: pkg
install:
    - echo "add \`export ZSH="$HOME/.hayashi/repo/ohmyzsh"\`"
    - echo 'and `source $ZSH/oh-my-zsh.sh` to your `~/.zshrc`'
update:
    - ./tools/upgrade.sh && ./tools/changelog.sh
```

## [ripgrep.yaml](https://github.com/BurntSushi/ripgrep)

 Recursively search directories for a regex pattern.
```yaml
pkg: ripgrep
url: https://github.com/BurntSushi/ripgrep
desc: Recursively search directories for a regex pattern.
clone: true
collection: pkg
install:
    - cargo build --release
pack:
    - path: target/release/rg
      type: bin
```

## [rust.yaml](https://github.com/rust-lang/rustup)

 The Rust toolchain installer
```yaml
pkg: rust
url: https://github.com/rust-lang/rustup
desc: The Rust toolchain installer
collection: pkg
install:
    - curl https://sh.rustup.rs -sSf | sh -s -- -y
```

## [tmux.yaml](https://github.com/tmux/tmux)

 tmux is a terminal multiplexer.
```yaml
pkg: tmux
url: https://github.com/tmux/tmux
desc: tmux is a terminal multiplexer.
clone: true
collection: pkg
install:
    - sh autogen.sh
    - ./configure
    - make
    - make prefix=$HOME/.hayashi/pack install
update:
    - make
    - make prefix=$HOME/.hayashi/pack install
```

## [vim-plug.yaml](https://github.com/junegunn/vim-plug)

 A minimalist Vim plugin manager.
```yaml
pkg: vim-plug
url: https://github.com/junegunn/vim-plug
desc: A minimalist Vim plugin manager.
clone: true
collection: pkg
install:
    - mkdir -p "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload
    - cp plug.vim "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/
```

## [vtcol.yaml](https://gitlab.com/phgsng/vtcol.git)

 Change the color scheme of the virtual Linux console.
```yaml
pkg: vtcol
url: https://gitlab.com/phgsng/vtcol.git
desc: Change the color scheme of the virtual Linux console.
clone: true
collection: pkg
install:
    - make
pack:
    - path: ./target/release/vtcol
      type: bin
```

## [wezterm.yaml](https://github.com/wez/wezterm)


```yaml
pkg: wezterm
url: https://github.com/wez/wezterm
clone: true
collection: pkg
install:
    - cargo build -r
pack:
    - path: target/release/wezterm target/release/wezterm-gui
      type: bin
```

## [zk.yaml](https://github.com/mickael-menu/zk)


```yaml
pkg: zk
url: https://github.com/mickael-menu/zk
clone: true
collection: pkg
install:
    - make
pack:
    - path: zk
      type: bin
```
