cask "lodge" do
  version "2.0.1"
  sha256 "d4e85215f7b575068de4b162441c33201dcaea599945feff813ffef1749c5d7c"

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
