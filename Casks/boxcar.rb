cask "boxcar" do
  version "1.3"
  sha256 "1b51824a4efdb7f9179ec6c1dc9cedd1d211a47b05f50bfe6df1e9d2231deabe"

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
