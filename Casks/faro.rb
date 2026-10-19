cask "faro" do
  version "0.1.3"

  on_arm do
    sha256 "ecdb15a77e6547e61770e735ded5f694f53357ebb4289e92f1957c1cce45c5d9"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/24c01c059cf842658111464d2a42ab0a_Faro-v0.1.3-arm64.dmg"
  end
  on_intel do
    sha256 "affb6454375c43bcb14ee2c438f4f3dfa79f318b56ef191ef43e3427be59b685"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/8e429f0373a9410ebb8766c90a385868_Faro-v0.1.3-x64.dmg"
  end

  name "Faro"
  desc "Official Desktop Application for Faro"
  homepage "https://faro.ir/"

  depends_on macos: :monterey

  app "Faro.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "/Applications/Faro.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Scripts/ir.avapardaz.faro",
    "~/Library/Application Support/faro",
    "~/Library/Application Support/ir.avapardaz.faro",
    "~/Library/Caches/ir.avapardaz.faro",
    "~/Library/Containers/ir.avapardaz.faro",
    "~/Library/Preferences/ir.avapardaz.faro.plist",
    "~/Library/Saved Application State/ir.avapardaz.faro.savedState",
  ]
end
