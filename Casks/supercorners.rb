cask "supercorners" do
  version "2.0.1"
  sha256 "6c248e88a9b5213c3ded2bbff2489c0192ba77b9608e1933c2326ef06d0cab71"

  url "https://github.com/daniyalmaster693/SuperCorners/releases/download/2.0.1/SuperCorners.dmg"
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