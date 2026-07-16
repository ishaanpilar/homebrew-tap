cask "copywatch" do
  version "1.3.0"
  sha256 "7d4999473582e93f60f682ac585ed2fcda2362e5b8014b2816ba4e7e25ebbdda"

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
