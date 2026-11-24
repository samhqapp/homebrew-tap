cask "task-manager-pro" do
  version "0.1.1"
  sha256 "98bcbb51341fa09ebd1f9b6b260923a0362dcac90f9bb1fa9b5a1fc268c0e38c"

  url "https://github.com/samhqapp/releases/releases/download/taskmanagerpro-v#{version}/TaskManagerPro-#{version}.dmg",
      verified: "github.com/samhqapp/releases/"
  name "Task Manager Pro"
  desc "Windows 11 style task manager"
  homepage "https://taskmanager.samhq.app/"

  livecheck do
    url "https://api.samhq.app/appcast/taskmanagerpro.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Task Manager Pro.app"

  zap trash: [
    "~/Library/Application Support/Task Manager Pro",
    "~/Library/Caches/com.surajmandal.taskmanager.pro",
    "~/Library/HTTPStorages/com.surajmandal.taskmanager.pro",
    "~/Library/Preferences/com.surajmandal.taskmanager.pro.plist",
  ]
end
