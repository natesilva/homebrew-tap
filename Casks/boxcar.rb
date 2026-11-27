cask "boxcar" do
  version "1.6"
  sha256 "8adab58cca6ee5d301aa7a1f5b824ff7f9305fd95512b68edc653693fa8339dd"

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
