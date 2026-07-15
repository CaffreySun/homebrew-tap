cask "wesafechat" do
  version "0.3.0"
  sha256 "5e6741c8787f8eda3b2964cf9d1346fc66f75b48b6d4a18d890cd7e7c8e038bc"

  url "https://github.com/CaffreySun/wesafechat/releases/download/v#{version}/WeSafeChat-v#{version}.app.zip"
  name "WeSafeChat"
  desc "macOS menu bar tool to auto-hide WeChat for privacy"
  homepage "https://github.com/CaffreySun/wesafechat"

  app "WeSafeChat.app"

  caveats "首次启动请在 Finder 中右键 → 打开以绕过 Gatekeeper。"
end
