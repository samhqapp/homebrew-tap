cask "task-manager-pro" do
  version "0.1"
  sha256 "991e0d6124dabf844a5d9cacad46e125007831664665c647bf37d333a497ba64"

  url "https://download.samhq.app/taskmanager/TaskManagerPro-#{version}.dmg"
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
