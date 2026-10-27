cask "codys-dev-tools" do
  version "0.42.0"
  sha256 "46d32f3220bb93c81f76685a7ca0cd5af9ea03381ed59e8137daffa0d9ffbd7b"

  url "https://github.com/codysechelski/codys-dev-tools-two/releases/download/v#{version}/codys-dev-tools-#{version}-universal.dmg"
  name "Cody's Dev Tools"
  desc "Offline developer tools: formatters, converters, generators, and more"
  homepage "https://devtools.codystools.online/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Cody's Dev Tools.app"

  # The app isn't signed with an Apple Developer ID, so Gatekeeper would refuse to open a
  # quarantined copy ("is damaged and can't be opened").
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Cody's Dev Tools.app"]
  end

  zap trash: [
    "~/Library/Application Support/Cody's Dev Tools",
    "~/Library/Caches/codys-dev-tools-updater",
    "~/Library/Logs/Cody's Dev Tools",
    "~/Library/Preferences/com.codysdevtools.app.plist",
    "~/Library/Saved Application State/com.codysdevtools.app.savedState",
  ]
end
