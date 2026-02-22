# Formula for push
# Copy this file to your homebrew-tools tap repo:
#   Stecki/homebrew-tools/Formula/push.rb
# Then: brew tap Stecki/tools && brew install push

class Push < Formula
  desc "Send Pushover notifications from the command line"
  homepage "https://github.com/Stecki/push"
  url "https://github.com/Stecki/push.git",
      tag: "v0.3.1"
  license "MIT"

  def install
    # Install full tool structure under share, symlink binary
    (share/"push").install Dir["bin", "lib", "subcommands"]
    bin.install_symlink share/"push/bin/push"
    bash_completion.install "completions/push.bash" => "push"
    zsh_completion.install "completions/_push"
  end

  test do
    assert_match "push", shell_output("#{bin}/push --version")
  end
end
