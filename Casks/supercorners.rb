cask "supercorners" do
  version "1.4.0"
  sha256 "c34943023a47866c82f78e8711a69dd55d976ec36c7662ea622d32eacaffec90"

  url "https://github.com/daniyalmaster693/SuperCorners/releases/download/1.4.0/SuperCorners.zip"
  name "SuperCorners"
  desc "Supercharge your Mac's Corners"
  homepage "https://supercorners.vercel.app/"

  livecheck do
    url "https://daniyalmaster693.github.io/SuperCorners/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

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