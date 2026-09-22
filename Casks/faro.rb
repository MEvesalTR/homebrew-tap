cask "faro" do
  version "0.0.3"

  on_arm do
    sha256 "62ba0c3667c45ea1dbfe49cca93a8cfe04b2d1d37fbccd3f269ee6353a3cddc4"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/releases/avapardaz/faro-flutter/macos/#{version}/arm64/Faro-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "ce5b28d7ccc89f3e713ea6e48ec009d45081e014f00fdda05c2480c99884f7db"
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