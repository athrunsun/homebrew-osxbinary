class NeovimBinary < Formula
    desc "Literally the future of vim."
    homepage "https://github.com/neovim/neovim"
    version "0.2.2"
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos.tar.gz"
    sha256 "18c3d048d8670515be9255d8b4a3c3b9f869f0cf4a40538fe7b85214edae44b3"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end

    def caveats; <<~EOS
        Executable is linked as "nvim".
        EOS
    end
end
