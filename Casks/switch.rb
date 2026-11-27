cask "switch" do
  version "3.10.0"
  sha256 "a8eeff521dd3f944b9422a3add5c6001719c5f8c2b30371d22c87433b91d323b"

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
