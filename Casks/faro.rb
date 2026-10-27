cask "faro" do
  version "0.1.4"

  on_arm do
    sha256 "0152d932d7b84ccc7d7c226b5455b184e82d6462e6874ccc56db4c619d31d3ca"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/8ebaba6b432b4178ab60184d479bc6d4_Faro-v0.1.4-arm64.dmg"
  end
  on_intel do
    sha256 "d34c96d8c5cd5c2f92376873adbbae72c66835e2b78c7f913c3c74bba01bebf9"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/9e737e0687944819963ecbd332c1d520_Faro-v0.1.4-x64.dmg"
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
