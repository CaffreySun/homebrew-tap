cask "wesafechat" do
  version "0.4.4"
  sha256 "aa76ab6f3ff35b5b764e91399b29210a8f1c5564a6b305e71e5758111b97edfa"

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
