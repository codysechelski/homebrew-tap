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

Cody's Dev Tools isn't signed with an Apple Developer ID, so the cask clears the macOS quarantine flag after installing; otherwise Gatekeeper would refuse to open it.

## Updates

The `brew bump` workflow checks for new releases every day and opens a pull request that updates the formula or cask.
`brew upgrade` picks up the new version once that pull request is merged.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
