cask "marklet" do
  version :latest
  sha256 :no_check

  url "https://github.com/wakmail/Marklet/releases/latest/download/Marklet.zip"
  name "Marklet"
  desc "Native Markdown editor with live formatting"
  homepage "https://getmarklet.com/"

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
