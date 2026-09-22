cask "faro" do
  version "0.0.5"

  on_arm do
    sha256 "9729a6d0019af9b2e87874b25a6aee0e5b97d51c6b31db509cb77ed7f5ce9943"

    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/releases/avapardaz/faro-flutter/macos/#{version}/arm64/Faro-v#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "c39a7a5ed1cb2c29f55b2b3f319a5f7b45d627223bab6fb3f198ee0043cab26a"

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
