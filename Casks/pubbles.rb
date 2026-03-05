  cask "pubbles" do
    version "1.0.5"
    sha256 "571d188d4689102fe33943efc9074d13d5da3ede7d5a46a25e69d6ce35aa68c6"

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
