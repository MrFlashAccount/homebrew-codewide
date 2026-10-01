class Codewide < Formula
  desc "Headless Linux host for CodeWide"
  homepage "https://github.com/MrFlashAccount/CodeWide"
  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-01.1/codewide-companion-0.5.0-x86_64-unknown-linux-musl.tar.gz"
  version "0.5.0"
  sha256 "0f19dd798571aa3a848326ab75a2257c6260bcc6b372411fd52149980e7ffe09"
  license "MIT"

  depends_on :linux
  depends_on arch: :x86_64

  def install
    bin.install "bin/codewide-companion"
    libexec.install "libexec/codewide-vcs-git"
    libexec.install "libexec/codewide-companion-memory-watch"

    service_file = buildpath/"systemd/user/codewide-companion.service"
    inreplace service_file,
              "%h/.local/lib/codewide/codewide-companion",
              opt_bin/"codewide-companion"
    prefix.install service_file
  end

  def caveats
    <<~EOS
      Before starting the service, initialize state and the bundled Git provider:
        codewide-companion create-token
        codewide-companion migrate-state
        codewide-companion vcs plugin install --id git --executable #{opt_libexec}/codewide-vcs-git --priority=-1000

      The service also requires the Codex app-server control socket documented by CodeWide.
      Then start it with:
        brew services start codewide
    EOS
  end

  service do
    name linux: "codewide-companion"
  end

  test do
    ENV["HOME"] = testpath
    system bin/"codewide-companion", "create-token"
    system bin/"codewide-companion", "migrate-state"
    assert_path_exists testpath/".codewide/host.token"
  end
end
