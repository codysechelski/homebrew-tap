# codysechelski/tap

Homebrew formulae for Cody Sechelski's projects.

| Name | Type | Description |
| --- | --- | --- |
| [bible-tui](https://github.com/codysechelski/bible-tui) | Formula | A terminal Bible reader with Vim-style keys |
| [codys-dev-tools](https://github.com/codysechelski/codys-dev-tools-two) | Cask (macOS) | Offline developer tools: formatters, converters, generators, and more |

## Install

```sh
brew install codysechelski/tap/bible-tui
brew install --cask codysechelski/tap/codys-dev-tools
```

Or `brew tap codysechelski/tap` and then `brew install bible-tui` / `brew install --cask codys-dev-tools`.

In a `Brewfile`:

```ruby
tap "codysechelski/tap"
brew "bible-tui"
cask "codys-dev-tools"
```

## Updates

Each project's release workflow commits its new version here as soon as the release is published, so `brew upgrade` picks it up right away.
The daily `brew bump` workflow is a fallback: it opens a pull request when it finds a release that isn't here yet.
Cody's Dev Tools updates itself, so its cask is marked `auto_updates true`: `brew upgrade` skips it unless you pass `--greedy`, and the app's built-in updater handles new versions instead.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
