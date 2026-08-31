cask "talk2text" do
  version "0.1.0"
  sha256 "a2763ee2e685ae135de7b336f9c91b590eca79b663f89f70951f15deaae88d4b"

  url "https://github.com/ericbrophy/homebrew-talk2text/releases/download/v#{version}/talk2text-#{version}.dmg",
      verified: "github.com/ericbrophy/homebrew-talk2text/"
  name "talk2text"
  desc "Offline push-to-talk dictation using MLX Whisper"
  homepage "https://github.com/ericbrophy/talk2text"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "talk2text.app"

  uninstall quit:       "com.ericbrophy.talk2text",
            login_item: "talk2text"

  zap trash: [
    "~/Library/Application Support/talk2text",
    "~/Library/LaunchAgents/com.ericbrophy.talk2text.plist",
    "~/Library/Logs/talk2text.log",
  ]

  caveats <<~EOS
    talk2text runs from the menu bar. On first launch grant it, under
    System Settings > Privacy & Security:
      - Microphone
      - Input Monitoring   (the Right-Command hotkey)
      - Accessibility      (pasting the transcript into the focused app)

    It also downloads a ~2.9 GB transcription model on first launch. To do
    that ahead of time (or fully offline from an existing HF cache):
      /Applications/talk2text.app/Contents/MacOS/talk2text --setup
  EOS
end
