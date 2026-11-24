cask "sams-partition-master" do
  version "1.0.1"
  sha256 "8c449e259adb463c1af5cc47fe32f12e6aeeca293e9f7a17d78edf7495d09e9c"

  url "https://github.com/samhqapp/releases/releases/download/samspartitionmaster-v#{version}/SamsPartitionMaster-#{version}.dmg",
      verified: "github.com/samhqapp/releases/"
  name "Sam's Partition Master"
  desc "Partition, format, and image disks"
  homepage "https://partitionmaster.samhq.app/"

  livecheck do
    url "https://api.samhq.app/appcast/samspartitionmaster.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Sam's Partition Master.app"

  zap trash: [
    "~/Library/Application Support/Sams Partition Master",
    "~/Library/Caches/com.surajmandal.samspartitionmaster",
    "~/Library/HTTPStorages/com.surajmandal.samspartitionmaster",
    "~/Library/Preferences/com.surajmandal.samspartitionmaster.plist",
  ]
end
