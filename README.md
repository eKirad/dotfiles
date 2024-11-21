# dotfiles
Collection of customized and handy configuration files for an easy and quick development environment setup.

## Installation
- Start with cloning the repo: `git clone https://github.com/eKirad/dotfiles.git`
- Execute the `install` script, which will:
  - install `diff-so-fancy`[^1] with `brew`
  - install/clone `oh-my-zsh`[^2]
- In order to make use of all the listed *dotfiles*, execute the `post-install` script, which involves:
  - link the `.vimrc` file
  - link the zsh-related `settings.zsh`
  - link the `.aliases` file
  - install several ZSH plug-ins, namely: `zsh-syntax-highlighting`[^3], `zsh-completions`[^4], and `zsh-autosuggestions`[^5].  

### Aliases
Note: Some of the `git` aliases assume an installed `gitmoji`[^6]. Please refer to the official documentation for further details and installation instructions.

[^1]: diff-so-fancy - [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)
[^2]: oh-my-zsh - [oh-my-zsh](https://github.com/ohmyzsh/ohmyzshi)
[^3]: zsh-syntax-highlighting - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-autosuggestions)
[^4]: zsh-completions - [zsh-completions](https://github.com/zsh-users/zsh-completions)
[^5]: zsh-autosuggestions - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
[^6]: gitmoji - [gitmoji](https://github.com/carloscuesta/gitmoji)
