class Wesafechat < Formula
  desc "macOS menu bar tool to auto-hide WeChat for privacy"
  homepage "https://github.com/CaffreySun/wesafechat"
  url "https://github.com/CaffreySun/wesafechat/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "432d4be43f2097ac721540af4cf1e5d44c5e23a4ecfcadd05b77c476a33bf2f1"
  license "MIT"
  version "0.2.2"

  depends_on xcode: "15.0"
  depends_on macos: :ventura

  def install
    system "bash", "install.sh", "--no-install", "--output", prefix
  end

  def post_install
    app_source = prefix/"WeSafeChat.app"
    app_target = "/Applications/WeSafeChat.app"
    system "rm", "-rf", app_target if File.exist?(app_target) || File.symlink?(app_target)
    system "ln", "-sf", app_source.to_s, app_target
    ohai "Linked to #{app_target}"
  end

  def caveats
    <<~EOS
      首次启动请在 Finder 中右键 WeSafeChat.app → 打开以绕过 Gatekeeper。
    EOS
  end
end
