cask "menuscores" do
  version "2.1.0"
  sha256 "8acbb8d66c1f3b9833af1fc852c59be0d61d5da8954db4296e57d3d88e279e12"

  url "https://github.com/daniyalmaster693/MenuScores/releases/download/2.1.0/MenuScores.zip"
  name "MenuScores"
  desc "Live Scores - Right From Your Notch"
  homepage "https://menuscores.vercel.app/"

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