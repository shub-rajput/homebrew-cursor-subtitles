  cask "pubbles" do
    version "1.1.3"
    sha256 "f4e25e74af91e07f4b65b2656fcd6d4fa36f4eed0b9eabaea70f9a1d3c7b76fd"

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
