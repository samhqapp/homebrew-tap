cask "hushpen" do
  version "2.5.0"
  sha256 "6b3f29318c8c7606c62303a4dc794526db5e6245180e5979e4f673c0a5a92436"

  url "https://github.com/surajmandalcell/hushpen/releases/download/v#{version}/Hushpen-#{version}-macos-arm64.zip"
  name "Hushpen"
  desc "Local speech-to-text dictation and file transcription"
  homepage "https://hushpen.samhq.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Hushpen.app"

  zap trash: [
    "~/Library/Application Support/Hushpen",
    "~/Library/Preferences/io.github.surajmandalcell.hushpen.plist",
  ]
end
