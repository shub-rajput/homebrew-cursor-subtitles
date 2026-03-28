  cask "pubbles" do
    version "1.2.1"
    sha256 "3e234b47436fb0e221b42fb8476934081ef6886b03affc6d151f912887568aea"

    url "https://github.com/shub-rajput/pubbles/releases/download/v#{version}/Pubbles_v#{version}.zip"
    name "Pubbles"
    desc "Subtitle bubbles for your pointer"
    homepage "https://github.com/shub-rajput/pubbles"

    app "Pubbles.app"

    postflight do
      system_command "/usr/bin/xattr",
                     args: ["-cr", "#{appdir}/Pubbles.app"]
    end

    zap trash: "~/.config/pubbles"
  end
