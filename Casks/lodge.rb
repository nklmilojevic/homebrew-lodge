cask "lodge" do
  version "1.1.1"
  sha256 "d39046b67cd708c2345e881a530e4a817ab974ffe5929c38a7d0868e2eee07d9"

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
