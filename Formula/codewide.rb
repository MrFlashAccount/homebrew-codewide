class Codewide < Formula
  desc "Headless Linux host for CodeWide"
  homepage "https://github.com/MrFlashAccount/CodeWide"
  url "https://github.com/MrFlashAccount/CodeWide/releases/download/release-2026-10-16.2/codewide-companion-0.6.11-x86_64-unknown-linux-musl.tar.gz"
  version "0.6.11"
  sha256 "91ee8ca987b00758e582907157d259117d5d70ea8c09d905e63165c8f9f8c398"
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

      Claude runs automatically when a signed-in `claude` is installed; the
      companion downloads the Claude Agent SDK from npm on its first start.
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
