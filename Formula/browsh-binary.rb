class BrowshBinary < Formula
    desc "A fully-modern text-based browser, rendering to TTY and browsers."
    homepage "https://github.com/browsh-org/browsh https://www.brow.sh"
    version "1.3.3"

    url "https://github.com/browsh-org/browsh/releases/download/v1.3.3/browsh_1.3.3_darwin_amd64.tar.gz"
    sha256 "fa0e4637baf1659845f6ae1bc436e3dc7182c6321020d082e501a4248f6c9651"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/browsh")
        bin.install_symlink("#{libexec}/browsh")
    end

    def caveats; <<~EOS
        Executable is linked as "browsh".
        EOS
    end
end
