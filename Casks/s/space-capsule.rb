cask "space-capsule" do
  version "1.20"
  sha256 "f432ec88f8418628b5ffceb954163a8fc81526906a93c8349bd2b9f7cfdf6f93"

  url "https://spacecapsule.app/downloads/Space%20Capsule%20#{version}.dmg"
  name "Space Capsule"
  desc "Spaces management tool"
  homepage "https://spacecapsule.app/"

  livecheck do
    url "https://spacecapsule.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Space Capsule.app"

  uninstall quit: "com.knollsoft.Space-Capsule"

  zap trash: [
    "~/Library/Application Support/Space Capsule",
    "~/Library/Caches/com.knollsoft.Space-Capsule",
    "~/Library/Cookies/com.knollsoft.Space-Capsule.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.Space-Capsule",
    "~/Library/HTTPStorages/com.knollsoft.Space-Capsule.binarycookies",
    "~/Library/Preferences/com.knollsoft.Space-Capsule.plist",
    "~/Library/Saved Application State/com.knollsoft.Space-Capsule.savedState",
  ]
end
