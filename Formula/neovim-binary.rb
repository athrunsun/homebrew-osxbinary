class NeovimBinary < Formula
    desc "Literally the future of vim."
    homepage "https://neovim.io/"
    version "0.2.0"

    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos.tar.gz"
    sha256 "0526a5557668924fd4fe972b1dc953c1e40978ceac65a6e9f4a27a25f2cbcfb3"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
