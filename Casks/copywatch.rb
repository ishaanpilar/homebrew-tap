cask "copywatch" do
  version "2.0.0"
  sha256 "c1c5d4ebce8ec58894c32c012f5fe446712512281d24d0cc54c241d7eaa37a1c"

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
