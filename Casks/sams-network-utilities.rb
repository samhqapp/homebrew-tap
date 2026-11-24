cask "sams-network-utilities" do
  version "1.0.13"
  sha256 "b301e5f2c75b79208822705dd6a76ea00b193931f2377d2f8d2ba2dfef5de2db"

  url "https://github.com/samhqapp/releases/releases/download/nettoys-v#{version}/SamsNetworkUtilities-#{version}.dmg",
      verified: "github.com/samhqapp/releases/"
  name "Sam's Network Utilities"
  desc "Network scanner, diagnostics, and Wi-Fi tools for the menu bar"
  homepage "https://samhq.app/"

  livecheck do
    url "https://api.samhq.app/appcast/nettoys.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Sam's Network Utilities.app"

  zap trash: [
    "~/Library/Application Support/MacPowerToys/NetToys",
    "~/Library/Application Support/Sam's Network Utilities",
    "~/Library/Caches/com.surajmandal.nettoys",
    "~/Library/HTTPStorages/com.surajmandal.nettoys",
    "~/Library/Preferences/com.surajmandal.nettoys.plist",
  ]
end
