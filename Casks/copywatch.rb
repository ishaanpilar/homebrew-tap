cask "copywatch" do
  version "1.6.0"
  sha256 "869de92bf5d73146d830e303f22405fc4a47e60781b7a3a5ec30efb000b30383"

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
