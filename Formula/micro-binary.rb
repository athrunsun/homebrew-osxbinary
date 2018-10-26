class MicroBinary < Formula
    desc "A modern and intuitive terminal-based text editor"
    homepage "https://github.com/zyedidia/micro"
    version "1.4.1"

    url "https://github.com/zyedidia/micro/releases/download/v#{version}/micro-#{version}-osx.tar.gz"
    sha256 "063d2bf9033ac4fb919abd55c4f9a41d82cdc9b3054f89a16cf1748c406edb02"

    bottle :unneeded
    conflicts_with "micro"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/micro")
    end

    def caveats; <<~EOS
        Executable is linked as "micro".
        EOS
    end
end
