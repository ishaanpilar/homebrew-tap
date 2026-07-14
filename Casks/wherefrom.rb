cask "wherefrom" do
  version "1.0.0"
  sha256 "2282b02e5047fa337677d0ffe968476c22c7db2bfc3cdf57de4963e2b515094f"

  url "https://github.com/ishaanpilar/WhereFrom/releases/download/v#{version}/WhereFrom-#{version}.dmg"
  name "Where From"
  desc "Menu-bar tool to see file origins and triage, group, and organize files"
  homepage "https://github.com/ishaanpilar/WhereFrom"

  app "WhereFrom.app"

  caveats <<~EOS
    WhereFrom is not code-signed. On first launch, right-click the app in
    /Applications and choose Open, or clear the quarantine flag:
      xattr -dr com.apple.quarantine "#{appdir}/WhereFrom.app"
  EOS
end
