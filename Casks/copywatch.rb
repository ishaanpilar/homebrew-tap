cask "copywatch" do
  version "1.5.1"
  sha256 "c11f2794226d83d9871f967ee9e28e8afc856727ab69710a1018eff5eee09713"

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
