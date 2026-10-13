cask "faro" do
  version "0.0.7"

  on_arm do
    sha256 "99a8e970ad464ba519af376af6cd1b9f1a66c8c9d26b7239655563b0a4c39da1"

    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/releases/avapardaz/faro-flutter/macos/#{version}/arm64/Faro-v#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "2b3c75f274cc63ff50fd3009fffa9381aafba2c7a65bd8a35477d95290289eb1"

    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/releases/avapardaz/faro-flutter/macos/#{version}/x64/Faro-v#{version}-x64.dmg"
  end

  name "Faro"
  desc "Official Desktop Application for Faro"
  homepage "https://faro.ir/"

  depends_on macos: :monterey

  app "Faro.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Faro.app"],
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
