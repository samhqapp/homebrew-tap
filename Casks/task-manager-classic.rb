cask "task-manager-classic" do
  version "0.1.4"
  sha256 "7b6ac629b3a54589d2f407d3d4a3ca49421c73d81820d9a2652f4ffa66f21c20"

  url "https://github.com/samhqapp/releases/releases/download/taskmanagerclassic-v#{version}/TaskManagerClassic-#{version}.dmg",
      verified: "github.com/samhqapp/releases/"
  name "Task Manager Classic"
  desc "Windows 7 style task manager"
  homepage "https://taskmanager.samhq.app/"

  livecheck do
    url "https://api.samhq.app/appcast/taskmanagerclassic.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Task Manager Classic.app"

  zap trash: [
    "~/Library/Caches/com.surajmandal.taskmanager.free",
    "~/Library/HTTPStorages/com.surajmandal.taskmanager.free",
    "~/Library/Preferences/com.surajmandal.taskmanager.free.plist",
  ]
end
