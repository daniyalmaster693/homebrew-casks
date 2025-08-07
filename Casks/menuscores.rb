cask "menuscores" do
  version "2.0.0"
  sha256 "fa71a73410e17cdcba478c755aad97f1da70bc719a8a9da8f587f1e89287950c"

  url "https://github.com/daniyalmaster693/MenuScores/releases/download/2.0.0/MenuScores.zip"
  name "MenuScores"
  desc "Live Scores - Right From Your Notch"
  homepage "https://github.com/daniyalmaster693/SuperCorners"

  livecheck do
    url "https://daniyalmaster693.github.io/MenuScores/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "MenuScores.app"

uninstall quit: "daniyalmaster.MenuScores"

zap trash: [
  "~/Library/Application Scripts/daniyalmaster.MenuScores",
  "~/Library/Application Support/MenuScores",
  "~/Library/Caches/daniyalmaster.MenuScores",
  "~/Library/HTTPStorages/daniyalmaster.MenuScores",
  "~/Library/Preferences/daniyalmaster.MenuScores.plist",
]
end