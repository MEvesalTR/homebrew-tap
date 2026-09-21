cask "faro" do
  version "0.0.2"

  on_arm do
    sha256 "7949cac680786090e8eb5f1cd4d49cd0733a2a87dd0fdc760a6676cd326af96a"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/releases/avapardaz/faro-flutter/macos/#{version}/arm64/Faro-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "908a40aa7665ee06480075fb15925cdf79cf93305d97cebf1cf6977b35ebfd39"
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