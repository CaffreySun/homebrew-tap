cask "wesafechat" do
  version "0.4.4"
  sha256 "aa76ab6f3ff35b5b764e91399b29210a8f1c5564a6b305e71e5758111b97edfa"

  url "https://github.com/CaffreySun/wesafechat/releases/download/v#{version}/WeSafeChat-v#{version}.app.zip"
  name "WeSafeChat"
  desc "Menu bar tool to auto-hide WeChat for privacy"
  homepage "https://github.com/CaffreySun/wesafechat"

  depends_on :macos

  app "WeSafeChat.app"

  # The app is unsigned, so Homebrew's quarantine attribute must be cleared or
  # Gatekeeper blocks the first launch. Remove this step once the app is signed
  # and notarized.
  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-rd", "com.apple.quarantine", "{{appdir}}/WeSafeChat.app"],
        must_succeed: false
  end
end
