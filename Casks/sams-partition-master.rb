cask "sams-partition-master" do
  version "1.0.0"
  sha256 "f902315af18d635c0297ed6821c7561ea510d268e76e26526c99cc2e80bd11ef"

  url "https://download.samhq.app/partitionmaster/SamsPartitionMaster-#{version}.dmg"
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
