cask "wesafechat" do
  version "0.3.1"
  sha256 "0c37939dab2c0f11c4d30646ee8354bf6301c068a67b76bba8ff98fb835c1fcf"

  url "https://github.com/CaffreySun/wesafechat/releases/download/v#{version}/WeSafeChat-v#{version}.app.zip"
  name "WeSafeChat"
  desc "macOS menu bar tool to auto-hide WeChat for privacy"
  homepage "https://github.com/CaffreySun/wesafechat"

  app "WeSafeChat.app"

  caveats "首次启动请在 Finder 中右键 → 打开以绕过 Gatekeeper。"
end
