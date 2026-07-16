cask "copywatch" do
  version "1.2.0"
  sha256 "a75d24bb7c4df9fdb93dc20bb793a4308282df09ea18ec7d9da3c557dc1f611e"

  url "https://github.com/ishaanpilar/CopyWatch/releases/download/v#{version}/CopyWatch-#{version}.dmg"
  name "CopyWatch"
  desc "Verified, resumable file backups for filmmakers with checksums and copy history"
  homepage "https://github.com/ishaanpilar/CopyWatch"

  app "CopyWatch.app"

  caveats <<~EOS
    CopyWatch is not code-signed. On first launch, right-click the app in
    /Applications and choose Open, or clear the quarantine flag:
      xattr -dr com.apple.quarantine "#{appdir}/CopyWatch.app"
  EOS
end
