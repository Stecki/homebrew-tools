# Formula for faltblatt2pdf
# Copy this file to your homebrew-tools tap repo:
#   Stecki/homebrew-tools/Formula/faltblatt2pdf.rb
# Then: brew tap Stecki/tools && brew install faltblatt2pdf

class Faltblatt2pdf < Formula
  desc "Faltblatt-Scans (Außen + Innen) in Einzelseiten und PDF umwandeln"
  homepage "https://github.com/Stecki/faltblatt2pdf"
  url "https://github.com/Stecki/faltblatt2pdf.git",
      tag: "v0.2.0"
  license "MIT"

  depends_on "img2pdf" => :recommended
  depends_on "ocrmypdf" => :recommended
  depends_on "tesseract" => :recommended
  depends_on "tesseract-lang" => :recommended

  def caveats
    <<~EOS
      ImageMagick is required but not declared as a dependency
      (to avoid conflicts with imagemagick-full). Install one of:
        brew install imagemagick
        brew install imagemagick-full
    EOS
  end

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
