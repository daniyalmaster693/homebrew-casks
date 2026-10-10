cask "menuscores" do
  version "2.3.2"
  sha256 "61d0e3dea24c363eb907b830e2dc68ae8016a0b03b04611083c67a436aeb1258"

  url "https://github.com/daniyalmaster693/MenuScores/releases/download/2.3.2/MenuScores.dmg"
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