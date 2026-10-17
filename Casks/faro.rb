cask "faro" do
  version "0.1.2"

  on_arm do
    sha256 "2f46a990c39d14a4847af50e61962d29fb6f264ba71a46aaba6b95fabd31b7e2"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/a8f97a6cce8a4cb0a3876ac581170bd6_Faro-v0.1.2-arm64.dmg"
  end
  on_intel do
    sha256 "c85ebaa03571c2d4cd018867709d6ed052a32afa9d7869981908889db9f0d5b7"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/16148ec4dd7d4b14bf76e95a27eaefcd_Faro-v0.1.2-x64.dmg"
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
