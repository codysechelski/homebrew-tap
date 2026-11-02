cask "codys-dev-tools" do
  version "0.46.4"
  sha256 "5e78f6d7dcc3647d20bc8893f097ee234622d46849260efe01fb7feb3ffad0e3"

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
