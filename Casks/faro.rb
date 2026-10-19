cask "faro" do
  version "0.1.3"

  on_arm do
    sha256 "66f889d3077727feaa363cf147b47ef894a744e5dc1a7d175b13bbc4b4d66f95"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/bf53471033464536af0761e77a4483aa_Faro-v0.1.3-arm64.dmg"
  end
  on_intel do
    sha256 "11baba722dc6aaec693560839bd09bb336897e82adbe9f00b19305f5fc266967"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/9182ca6850fc401a859b754463cb4dbe_Faro-v0.1.3-x64.dmg"
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
