cask "codys-dev-tools" do
  version "0.47.0"
  sha256 "66cc771350dced3a8345d9037e963693227f30d1e242b3d83f7181ddb66c22a4"

  url "https://github.com/codysechelski/codys-dev-tools-two/releases/download/v#{version}/codys-dev-tools-#{version}-universal.dmg"
  name "Cody's Dev Tools"
  desc "Offline developer tools: formatters, converters, generators, and more"
  homepage "https://devtools.codystools.online/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Cody's Dev Tools.app"

  zap trash: [
    "~/Library/Application Support/Cody's Dev Tools",
    "~/Library/Caches/codys-dev-tools-updater",
    "~/Library/Logs/Cody's Dev Tools",
    "~/Library/Preferences/com.codysdevtools.app.plist",
    "~/Library/Saved Application State/com.codysdevtools.app.savedState",
  ]
end
