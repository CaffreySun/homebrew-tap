class Wesafechat < Formula
  desc "macOS menu bar tool to auto-hide WeChat for privacy"
  homepage "https://github.com/CaffreySun/wesafechat"
  url "https://github.com/CaffreySun/wesafechat/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "91b83bb598030b0054551927864a4c71ab2652f7c6c452ab8bf822c7996230c7"
  license "MIT"
  version "0.2.1"

  depends_on xcode: "15.0"
  depends_on macos: :ventura

  def install
    system "bash", "install.sh", "--no-install", "--output", prefix
  end

  def caveats
    <<~EOS
      WeSafeChat.app 已安装到 #{prefix}/WeSafeChat.app。
      首次启动请在 Finder 中右键 → 打开以绕过 Gatekeeper。
    EOS
  end
end
