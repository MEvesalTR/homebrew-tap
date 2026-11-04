cask "faro" do
  version "0.1.6"

  on_arm do
    sha256 "53c6b5aa91d541e4aef966bf7f4a62d2082e35a8d95141c50fc0b97a6e0da8b9"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/199c8af95ac444bd9a55dd25894f094c_Faro-v0.1.6-arm64.dmg"
  end
  on_intel do
    sha256 "658114e492dcf5dc7fc67a81ecdced04f08359d5f915ee762d87a860aa9ef4eb"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/868af5726dbe43e7a89f97b83d410068_Faro-v0.1.6-x64.dmg"
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
