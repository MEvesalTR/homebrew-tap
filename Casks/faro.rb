cask "faro" do
  version "0.1.0"

  on_arm do
    sha256 "aa78df8d29d35f5797e319e4b8aae21287e21c15620504ad38b261abd963071e"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/2cdd4a23582142ca9198593b59e40a32_Faro-v0.1.0-arm64.dmg"
  end
  on_intel do
    sha256 "79c554fd5f2a4cdaa203dd171f29cb320ebe9260c7c68192420863dce0d4ad17"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/4474b8e00ba04c70931fc3b3f27d8527_Faro-v0.1.0-x64.dmg"
  end

  name "Faro"
  desc "Official Desktop Application for Faro"
  homepage "https://faro.ir/"

  depends_on macos: :monterey

  app "Faro.app"

  postflight_steps do
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
