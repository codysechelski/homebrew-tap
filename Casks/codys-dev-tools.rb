cask "codys-dev-tools" do
  version "0.47.1"
  sha256 "d8f75c634a57b2ab8c6a4f89a667175392a206a94db5594ba47a73b6faa8f6d1"

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
