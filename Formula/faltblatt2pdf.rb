# Formula for faltblatt2pdf
# Copy this file to your homebrew-tools tap repo:
#   Stecki/homebrew-tools/Formula/faltblatt2pdf.rb
# Then: brew tap Stecki/tools && brew install faltblatt2pdf

class Faltblatt2pdf < Formula
  desc "TODO: Short description of faltblatt2pdf"
  homepage "https://github.com/Stecki/faltblatt2pdf"
  url "https://github.com/Stecki/faltblatt2pdf.git",
      tag: "v0.1.0"
  license "MIT"

  def install
    # Install full tool structure under share, symlink binary
    (share/"faltblatt2pdf").install Dir["bin", "lib", "subcommands"]
    bin.install_symlink share/"faltblatt2pdf/bin/faltblatt2pdf"
    bash_completion.install "completions/faltblatt2pdf.bash" => "faltblatt2pdf"
    zsh_completion.install "completions/_faltblatt2pdf"
  end

  test do
    assert_match "faltblatt2pdf", shell_output("#{bin}/faltblatt2pdf --version")
  end
end
