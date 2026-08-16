cask "supercorners" do
  version "1.5.0"
  sha256 "d43c5adf5498d478b434eb772cf9168d72ea05e4fa6fde51e7cbb0bfd31685e5"

  url "https://github.com/daniyalmaster693/SuperCorners/releases/download/1.5.0/SuperCorners.zip"
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