cask "faro" do
  version "0.0.8"

  on_arm do
    sha256 "391bdf8447d51585646c738e472c44730f8acf9fb646aa9fbbb0aa411d63add6"

    url "https://s3.ir-tbz-sh1.arvanstorage.ir/hamafzar/releases/avapardaz/faro/macos/#{version}/arm64/Faro-v#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "6ddc70d3a27c51493c8ae4d8399162ffa84db6c06eff7667c3346dd13bc4d0fd"

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
