cask "wesafechat" do
  version "0.3.4"
  sha256 "6403713163a184bf17fd3d332000c9e4bfc4450b8a674ab57fca3c4750e7cdad"

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
