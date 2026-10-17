cask "faro" do
  version "0.1.2"

  on_arm do
    sha256 "13bd0fc290ae80520a1b22274abbfde74827409966619fd9676ef5d3d3666ac7"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/2172265bb8784562b31b76c2730ff75d_Faro-v0.1.2-arm64.dmg"
  end
  on_intel do
    sha256 "a3bc39c53c9286c2b515223a217e4456333b064553e07fcaa119091096472f8a"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/3b17a17ba77d465192f0e6be9f80d5dc_Faro-v0.1.2-x64.dmg"
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
