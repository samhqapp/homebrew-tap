cask "macpowertoys" do
  version "2.2.0"
  sha256 "15a16803ab130b1af52ef69f2623511ccb94f438c72301845249dca47d4a1987"

  url "https://github.com/samhqapp/macpowertoys/releases/download/v#{version}/MacPowerToys-#{version}.dmg"
  name "MacPowerToys"
  desc "Ruler, color picker, text extractor, fan control, and other utilities"
  homepage "https://macpowertoys.samhq.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "MacPowerToys.app"

  uninstall launchctl: "com.surajmandal.macpowertoys.helper",
            quit:      "com.surajmandal.macpowertoys",
            delete:    [
              "/Library/LaunchDaemons/com.surajmandal.macpowertoys.helper.plist",
              "/Library/PrivilegedHelperTools/com.surajmandal.macpowertoys.helper",
            ]

  zap trash: [
    "~/Library/Application Support/MacPowerToys",
    "~/Library/Caches/com.surajmandal.macpowertoys",
    "~/Library/HTTPStorages/com.surajmandal.macpowertoys",
    "~/Library/Logs/MacPowerToys",
    "~/Library/Preferences/com.surajmandal.macpowertoys.plist",
  ]
end
