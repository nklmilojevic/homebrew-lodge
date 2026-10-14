cask "lodge" do
  version "2.1.0"
  sha256 "4d9ced9ffdb159228a263340a8e408f9b1be64dc310c2b429bdc02f23f80f14c"

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
