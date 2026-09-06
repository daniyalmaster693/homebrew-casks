cask "menuscores" do
  version "2.3.0"
  sha256 "daa55bcb28252a71bbc3ff6ca2c3801cc0c9c6fd9896d3ce67a6a2e58fe926d9"

  url "https://github.com/daniyalmaster693/MenuScores/releases/download/2.3.0/MenuScores.dmg"
  name "MenuScores"
  desc "Live Scores - Right From Your Notch"
  homepage "https://menuscores.vercel.app/"

  livecheck do
    url "https://daniyalmaster693.github.io/MenuScores/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

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