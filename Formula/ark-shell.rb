class ArkShell < Formula
  desc "Interactive shell blending bash, zsh, fish, and nushell ideas, in C++20"
  homepage "https://github.com/Eclipser9-20/Ark-shell"
  url "https://github.com/Eclipser9-20/Ark-shell/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_AFTER_FINAL_TAG"
  license "MIT"
  head "https://github.com/Eclipser9-20/Ark-shell.git", branch: "main"

  def install
    system "make"
    bin.install "ark"
    bin.install "assh"
  end

  def caveats
    <<~EOS
      To use ark as your login shell:
        echo #{opt_bin}/ark | sudo tee -a /etc/shells
        chsh -s #{opt_bin}/ark

      On first interactive run ark writes a fully commented ~/.config/ark/ark.config.
      `assh <host>` runs ark over SSH with nothing installed on the remote.
    EOS
  end

  test do
    assert_equal "hi", shell_output("#{bin}/ark -c 'echo hi'").strip
    assert_equal "HELLO", shell_output("#{bin}/ark -c 'echo hello | tr a-z A-Z'").strip
  end
end
