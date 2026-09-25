class Relay < Formula
  desc "Blind WebSocket relay for CodeWide"
  homepage "https://github.com/MrFlashAccount/CodeWide"
  url "https://github.com/MrFlashAccount/CodeWide/releases/download/relay-v0.3.1/codewide-relay-x86_64-unknown-linux-musl", using: :nounzip
  version "0.3.1"
  sha256 "cd9136e01e7557a37b4f2a1b27f05a646847caf490cc151c4b71495cda0eefa3"
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
