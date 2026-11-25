cask "boxcar" do
  version "1.4"
  sha256 "fb588fbbfe485e308648cb00357affdee14bc89bcfec1cf77b04ce4290866936"

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
