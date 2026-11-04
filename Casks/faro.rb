cask "faro" do
  version "0.1.5"

  on_arm do
    sha256 "409187c98f5e151627849fa74d3293e78d9fbf61674c5a58fc6198250968d6ee"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/5ecaf8ecff54433bba022de5559da2b3_Faro-v0.1.5-arm64.dmg"
  end
  on_intel do
    sha256 "b4f43c8fb4085beabcb6150be658ad0b1b1d780d11882cfdce55de0c4d2ac8ac"
    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/s3_storage/public/37544e236691444fa375e6b77720a9c9_Faro-v0.1.5-x64.dmg"
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
