# Formula for claude-wrapper
# Copy this file to your homebrew-tools tap repo:
#   Stecki/homebrew-tools/Formula/claude-wrapper.rb
# Then: brew tap Stecki/tools && brew install claude-wrapper

class ClaudeWrapper < Formula
  desc "Claude Code wrapper with notifications and terminal titles"
  homepage "https://github.com/Stecki/claude-wrapper"
  url "https://github.com/Stecki/claude-wrapper.git",
      tag: "v0.3.2"
  license "MIT"

  depends_on "terminal-notifier" => :recommended

  def install
    # Install full tool structure under share, symlink binaries
    (share/"claude-wrapper").install Dir["bin", "lib", "libexec", "subcommands", "config"]
    bin.install_symlink share/"claude-wrapper/bin/claude-wrapper"
    bin.install_symlink share/"claude-wrapper/bin/claude-wrapper" => "cw"
    bin.install_symlink share/"claude-wrapper/bin/claude-wrapper" => "update-claude"
    bash_completion.install "completions/claude-wrapper.bash" => "claude-wrapper"
    zsh_completion.install "completions/_claude-wrapper"
  end

  def post_install
    chmod 0755, share/"claude-wrapper/libexec/claude-notify.sh"
  end

  def caveats
    <<~EOS
      To register hooks in Claude Code, run:
        claude-wrapper install

      To start Claude with notifications:
        claude-wrapper
        cw              (short alias)
    EOS
  end

  test do
    assert_match "claude-wrapper", shell_output("#{bin}/claude-wrapper --version")
  end
end
