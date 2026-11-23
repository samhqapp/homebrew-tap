cask "task-manager-classic" do
  version "0.1"
  sha256 "972310c2e65a3ffd089322c31fb170044f307e5eefe3aad353bf236648628929"

  url "https://download.samhq.app/taskmanager/TaskManagerClassic-#{version}.dmg"
  name "Task Manager Classic"
  desc "Windows 7 style task manager"
  homepage "https://taskmanager.samhq.app/"

  livecheck do
    url "https://api.samhq.app/appcast/taskmanagerclassic.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Task Manager Classic.app"

  zap trash: [
    "~/Library/Caches/com.surajmandal.taskmanager.free",
    "~/Library/HTTPStorages/com.surajmandal.taskmanager.free",
    "~/Library/Preferences/com.surajmandal.taskmanager.free.plist",
  ]
end
