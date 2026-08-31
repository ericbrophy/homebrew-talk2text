# homebrew-talk2text

Homebrew tap for [talk2text](https://github.com/ericbrophy/talk2text) — offline
push-to-talk dictation for macOS using MLX Whisper.

## Install

```bash
brew install --cask ericbrophy/talk2text/talk2text
```

The `<owner>/<repo>/<cask>` triple auto-taps and installs in one step.

On first launch grant **Microphone**, **Input Monitoring**, and
**Accessibility** under System Settings > Privacy & Security, then the app
downloads a ~2.9 GB transcription model (or run
`/Applications/talk2text.app/Contents/MacOS/talk2text --setup` first).

## Update

```bash
brew upgrade --cask talk2text
```

## Uninstall

```bash
brew uninstall --cask talk2text          # app only
brew uninstall --zap --cask talk2text    # also the model, logs, login item
```

## Requirements

- macOS 14 (Sonoma) or later
- Apple Silicon
