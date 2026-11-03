cask "faro" do
  version "0.1.6"

  on_arm do
    sha256 "c517d7078ca488b7c18bcd1a242bc5692ffa852e3461aaa006da6d8f1410dad8"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/073ea92543b6444182c7de54f45fe6da_Faro-v0.1.6-arm64.dmg"
  end
  on_intel do
    sha256 "da58744661581da78d5b2988088e2772677bf922ca2c65eb2d061acc307b802b"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/59a53f22003649ad9fbdff42dab61eb4_Faro-v0.1.6-x64.dmg"
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
