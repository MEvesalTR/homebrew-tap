cask "faro" do
  version "0.0.4"

  on_arm do
    sha256 "7159185f0c4833b9ea21350da1c244a3c1ca103e3dbd1a2c3f31f7bc6f678d7b"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/releases/avapardaz/faro-flutter/macos/#{version}/arm64/Faro-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "7a261d6a536c22944613b52a5a82fc80c15cb28f4f2fcff65e1307c9649d8570"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/releases/avapardaz/faro-flutter/macos/#{version}/x64/Faro-v#{version}-x64.dmg"
  end

  name "Faro"
  desc "Official Desktop Application for Faro"
  homepage "https://faro.ir"

  app "Faro.app"

  zap trash: [
    "~/Library/Application Support/faro",
    "~/Library/Preferences/com.example.faro.plist",
  ]
end