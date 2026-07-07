cask "menuscores" do
  version "2.1.3"
  sha256 "7eb67de00ffd9258049aef0b40f91b1205632869823df6f1d4bf183a5c7a3471"

  url "https://github.com/daniyalmaster693/MenuScores/releases/download/2.1.3/MenuScores.zip"
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