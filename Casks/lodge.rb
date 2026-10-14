cask "lodge" do
  version "2.2.0"
  sha256 "09fd3cdd202c16917fb345eb1c08f249c57d02e77a605d918ee62baac20a8bd4"

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
