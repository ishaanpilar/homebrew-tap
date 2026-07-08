cask "macmonitor" do
  version "1.1.0"
  sha256 "f3a05ed0a8ed71c5e9d684d718837f026a25e5915f2f6a6744a4afe4e5e597c2"

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
