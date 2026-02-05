cask "lodge" do
  version "1.0.1"
  sha256 "469dd4d4f1927fb5cf2499980539ddcd715e71c5448e3beb53b87b02fdc9047a"

  url "https://github.com/nklmilojevic/Lodge/releases/download/v#{version}/Lodge.app.zip"
  name "Lodge"
  desc "Clipboard manager"
  homepage "https://github.com/nklmilojevic/Lodge"

  livecheck do
    url "https://raw.githubusercontent.com/nklmilojevic/Lodge/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Lodge.app"

  uninstall quit: "com.nklmilojevic.Lodge"

  zap trash: [
        "~/Library/Application Support/Lodge",
        "~/Library/Preferences/com.nklmilojevic.Lodge.plist",
      ]
end
