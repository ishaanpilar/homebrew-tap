cask "macmonitor" do
  version "1.0.0"
  sha256 "e21ca50856b6af21e3582a7a37715901b9daa29a0d5f272ed98cc268d77760b1"

  url "https://github.com/ishaanpilar/MacMonitor/releases/download/v#{version}/MacMonitor-#{version}.dmg"
  name "MacMonitor"
  desc "Menu-bar monitor for thermal pressure, CPU, memory, and storage"
  homepage "https://github.com/ishaanpilar/MacMonitor"

  depends_on macos: ">= :sequoia"

  app "MacMonitor.app"

  caveats <<~EOS
    MacMonitor is not notarized yet. If it does not open, install with:
      brew install --cask ishaanpilar/tap/macmonitor --no-quarantine
    or remove quarantine after install:
      xattr -dr com.apple.quarantine "/Applications/MacMonitor.app"
  EOS

  zap trash: [
    "~/Library/Preferences/com.macmonitor.app.plist",
  ]
end
