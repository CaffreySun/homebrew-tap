cask "wesafechat" do
  version "0.3.2"
  sha256 "530863e968f22a4dc08e5811898c3c586338b323281e55eec7a8b206da0eb22e"

  url "https://github.com/CaffreySun/wesafechat/releases/download/v#{version}/WeSafeChat-v#{version}.app.zip"
  name "WeSafeChat"
  desc "macOS menu bar tool to auto-hide WeChat for privacy"
  homepage "https://github.com/CaffreySun/wesafechat"

  app "WeSafeChat.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-rd", "com.apple.quarantine", "#{appdir}/WeSafeChat.app"]
  end

  caveats "首次启动请在 Finder 中右键 → 打开以绕过 Gatekeeper。"
end
