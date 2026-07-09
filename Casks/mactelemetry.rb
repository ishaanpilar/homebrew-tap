cask "mactelemetry" do
  version "1.1.1"
  sha256 "16fb0434abfba18cca86087d35eb357128ce1aa0dc1540208add7a8cbf26d121"

  url "https://github.com/ishaanpilar/MacTelemetry/releases/download/v#{version}/MacTelemetry-#{version}.dmg"
  name "MacTelemetry"
  desc "Menu-bar monitor for thermal pressure, CPU, memory, and storage"
  homepage "https://github.com/ishaanpilar/MacTelemetry"

  depends_on macos: ">= :sequoia"

  app "MacTelemetry.app"

  caveats <<~EOS
    MacTelemetry is not notarized yet, so macOS quarantines it. Clear the flag once after install:

      xattr -dr com.apple.quarantine "/Applications/MacTelemetry.app"

    (Or open it once, then allow it in System Settings > Privacy & Security > Open Anyway.)
  EOS

  zap trash: [
    "~/Library/Preferences/com.mactelemetry.app.plist",
  ]
end
