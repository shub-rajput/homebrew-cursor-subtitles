  cask "cursor-subtitles" do
    version "1.0.3"
    sha256 "c487aed66dfd0a09ecc3f3c9a2c6083fe03f5646bc967e6b7eb05be83890929c"

    url "https://github.com/shub-rajput/cursor_subtitles/releases/download/v#{version}/CursorSubtitles_v#{version}.zip"
    name "CursorSubtitles"
    desc "Real-time on-screen subtitles that follow your cursor"
    homepage "https://github.com/shub-rajput/cursor_subtitles"

    app "CursorSubtitles.app"

    postflight do
      system_command "/usr/bin/xattr",
                     args: ["-cr", "#{appdir}/CursorSubtitles.app"]
    end

    zap trash: "~/.config/cursor-subtitles"
  end
