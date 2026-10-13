class Relay < Formula
  desc "Blind WebSocket relay for CodeWide"
  homepage "https://github.com/MrFlashAccount/CodeWide"
  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-13.1/codewide-relay-x86_64-unknown-linux-musl", using: :nounzip
  version "0.6.3"
  sha256 "7f99f0eec1e8172e9c13925aa124069d213c44702c9642f27cfd5f8c6e0bdc32"
  license "MIT"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "codewide-relay-x86_64-unknown-linux-musl" => "codewide-relay"
    chmod 0755, bin/"codewide-relay"
  end

  test do
    assert_match "codewide-relay #{version}", shell_output("#{bin}/codewide-relay --version")
  end
end
