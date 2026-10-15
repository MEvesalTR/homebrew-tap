cask "faro" do
  version "0.1.1"

  on_arm do
    sha256 "4971675cac02b7bec0bed5ef571b08df4b233ff3725a19ef9765ca9e154d6b7e"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/d3ff96eda02a4eef904e26b22ac1b3ba_Faro-v0.1.1-arm64.dmg"
  end
  on_intel do
    sha256 "acc36626dfb65900bd6707759c8b11e59a1adf93ea5bff24c28fecbb34f29689"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/add80af599f2456c859d9ed995d22363_Faro-v0.1.1-x64.dmg"
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
