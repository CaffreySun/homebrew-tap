cask "wesafechat" do
  version "0.3.3"
  sha256 "b94a563ec2ca4b97f0f0cc598ad27203f50b5626b5970409375c8ee3ed2bd50f"

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
