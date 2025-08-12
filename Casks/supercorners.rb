cask "supercorners" do
  version "1.3.1"
  sha256 "c47aba923f67c96b567e42dec1c77b2fe5b65da30918cfc4aacab958478e75f9"

  url "https://github.com/daniyalmaster693/SuperCorners/releases/download/1.3.1/SuperCorners.zip"
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