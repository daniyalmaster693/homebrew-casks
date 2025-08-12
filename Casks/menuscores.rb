cask "menuscores" do
  version "2.0.1"
  sha256 "c4ccada2d955164ca598aa9718f6faf1b050a22057ef233499b700e95ba06826"

  url "https://github.com/daniyalmaster693/MenuScores/releases/download/2.0.1/MenuScores.zip"
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