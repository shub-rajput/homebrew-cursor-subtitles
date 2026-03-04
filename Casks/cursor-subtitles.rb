 cask "cursor-subtitles" do
    version "1.0.1"
    sha256 "dd64f9e11c58158e03798247292e48f63397846caec026eed6f716a01c508112"

    url "https://github.com/shub-rajput/cursor_subtitles/releases/download/v#{version}/CursorSubtitles_v#{version}.zip"
    name "CursorSubtitles"
    desc "Real-time on-screen subtitles that follow your cursor"
    homepage "https://github.com/shub-rajput/cursor_subtitles"

    app "CursorSubtitles.app"

    zap trash: "~/.config/cursor-subtitles"
  end
