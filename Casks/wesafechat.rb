cask "wesafechat" do
  version "0.4.1"
  sha256 "ac210274db47e04e3f91ed78e88a1997e8c8c6c593fc144eaa019b9a029fefed"

  url "https://github.com/CaffreySun/wesafechat/releases/download/v#{version}/WeSafeChat-v#{version}.app.zip"
  name "WeSafeChat"
  desc "macOS menu bar tool to auto-hide WeChat for privacy"
  homepage "https://github.com/CaffreySun/wesafechat"

  app "WeSafeChat.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-rd", "com.apple.quarantine", "#{appdir}/WeSafeChat.app"]
  end

end
