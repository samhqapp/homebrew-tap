cask "throttlecontrol" do
  version "0.2.6"
  sha256 "82ad59107ae9e9398704aae4971c463c732364e4ca75d6838f323f92bfe20cd0"

  url "https://download.samhq.app/throttlecontrol/ThrottleControl-#{version}.dmg"
  name "ThrottleControl"
  desc "Cap background downloads in the menu bar"
  homepage "https://throttlecontrol.samhq.app/"

  livecheck do
    url "https://api.samhq.app/v1/releases"
    strategy :json do |json|
      json.dig("throttlecontrol", "macos", "version")
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ThrottleControl.app"

  zap trash: "~/Library/Preferences/io.github.surajmandalcell.ThrottleControl.plist"
end
