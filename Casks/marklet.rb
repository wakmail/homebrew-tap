cask "marklet" do
  version "2.1"
  sha256 "b2b35e998f7195c01069c00bf72953f11692347b9e5e7c09d3f9658d27ac9db5"

  url "https://github.com/wakmail/Marklet/releases/download/v#{version}/Marklet.zip"
  name "Marklet"
  desc "Native Markdown editor with live formatting"
  homepage "https://getmarklet.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Marklet.app"

  zap trash: [
    "~/Library/Application Support/Marklet",
    "~/Library/Caches/app.marklet.Marklet",
    "~/Library/Containers/app.marklet.Marklet.QuickLookPreview",
    "~/Library/HTTPStorages/app.marklet.Marklet",
    "~/Library/HTTPStorages/app.marklet.Marklet.binarycookies",
    "~/Library/Preferences/app.marklet.Marklet.plist",
    "~/Library/Saved Application State/app.marklet.Marklet.savedState",
  ]
end
