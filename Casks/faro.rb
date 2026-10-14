cask "faro" do
  version "0.0.7"

  on_arm do
    sha256 "d9e06a3e0786fabb767adf16cb0b68d4b0dc0df45e3f8f8c0358929e82512f9a"

    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/releases/avapardaz/faro/macos/#{version}/arm64/Faro-v#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "f2c97cd877bad4c28d3ef149594b9593f89e9496a5043ed10af1bdb5aa54233a"

    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/releases/avapardaz/faro/macos/#{version}/x64/Faro-v#{version}-x64.dmg"
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
