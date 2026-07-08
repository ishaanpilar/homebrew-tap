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
    MacMonitor is not notarized yet, so macOS quarantines it. Clear the flag once after install:

      xattr -dr com.apple.quarantine "/Applications/MacMonitor.app"

    (Or open it once, then allow it in System Settings > Privacy & Security > Open Anyway.)
  EOS

  zap trash: [
    "~/Library/Preferences/com.macmonitor.app.plist",
  ]
end
