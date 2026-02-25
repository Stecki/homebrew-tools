# Formula for claude-wrapper
# Copy this file to your homebrew-tools tap repo:
#   Stecki/homebrew-tools/Formula/claude-wrapper.rb
# Then: brew tap Stecki/tools && brew install claude-wrapper

class ClaudeWrapper < Formula
  desc "TODO: Short description of claude-wrapper"
  homepage "https://github.com/Stecki/claude-wrapper"
  url "https://github.com/Stecki/claude-wrapper.git",
      tag: "v0.1.0"
  license "MIT"

  def install
    # Install full tool structure under share, symlink binary
    (share/"claude-wrapper").install Dir["bin", "lib", "subcommands"]
    bin.install_symlink share/"claude-wrapper/bin/claude-wrapper"
    bash_completion.install "completions/claude-wrapper.bash" => "claude-wrapper"
    zsh_completion.install "completions/_claude-wrapper"
  end

  test do
    assert_match "claude-wrapper", shell_output("#{bin}/claude-wrapper --version")
  end
end
