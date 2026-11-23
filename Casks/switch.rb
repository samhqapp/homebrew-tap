cask "switch" do
  version "3.8.2"
  sha256 "396797df74783a6e57ae5c24e037255243c6d899af929a7840af729b92f00dda"

  url "https://github.com/samhqapp/switch/releases/download/v#{version}/Switch-v#{version}-mac-arm64.dmg"
  name "Switch"
  desc "Menu bar manager for AI coding accounts, usage, and limits"
  homepage "https://switch.samhq.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Switch.app"

  uninstall quit: "com.mandalsuraj.ai-manager"

  zap trash: [
    "~/.switch",
    "~/Library/Caches/com.mandalsuraj.ai-manager",
    "~/Library/HTTPStorages/com.mandalsuraj.ai-manager",
    "~/Library/Preferences/com.mandalsuraj.ai-manager.plist",
  ]
end
