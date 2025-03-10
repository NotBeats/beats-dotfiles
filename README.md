# Dotfiles
## Steps to use chezmoi on another machine 

1. Initalize chezmoi with this repo
`chezmoi init https://github.com/NotBeats/beats-dotfiles.git`

2. Check the changes that will be made (optional)
`chezmoi diff`

3. Apply the changes
`chezmoi apply -v`

4. To edit any of the files (optional)
`chezmoi edit $file`

5. To merge changes between files (optional)
`chezmoi merge $file`

7. To pull and apply latest changes
`chezmoi update -v`

## Command for a brand new machine
`chezmoi init --apply https://github.com/NotBeats/beats-dotfiles.git`

## To download Oh My Zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
