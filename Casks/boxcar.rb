cask "boxcar" do
  version "1.5"
  sha256 "9a18e090a6120d59c29fc906705606d5d873b6c1a75504a189f933fe9b3e8345"

  url "https://github.com/natesilva/boxcar/releases/download/v#{version}/Boxcar-#{version}.zip"
  name "Boxcar"
  desc "Menu bar app for managing Docker containers"
  homepage "https://github.com/natesilva/boxcar"

  livecheck do
    url "https://natesilva.github.io/boxcar/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Boxcar.app"

  zap trash: "~/Library/Preferences/com.natesilva.Boxcar.plist"
end
