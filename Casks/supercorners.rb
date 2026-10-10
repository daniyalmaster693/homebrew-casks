cask "supercorners" do
  version "2.0.2"
  sha256 "2bffc8526a4ec1bcae08bf37b18729d2295cd9bf73f562764673e8703b1baedd"

  url "https://github.com/daniyalmaster693/SuperCorners/releases/download/2.0.2/SuperCorners.dmg"
  name "SuperCorners"
  desc "Supercharge your Mac's Corners"
  homepage "https://supercorners.vercel.app/"

  livecheck do
    url "https://daniyalmaster693.github.io/SuperCorners/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "SuperCorners.app"

uninstall quit: "daniyalmaster.SuperCorners"

zap trash: [
  "~/Library/Application Scripts/daniyalmaster.SuperCorners",
  "~/Library/Application Support/SuperCorners",
  "~/Library/Caches/daniyalmaster.SuperCorners",
  "~/Library/HTTPStorages/daniyalmaster.SuperCorners",
  "~/Library/Preferences/daniyalmaster.SuperCorners.plist",
]
end