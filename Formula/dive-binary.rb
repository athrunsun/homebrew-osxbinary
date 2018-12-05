class DiveBinary < Formula
    desc "A tool for exploring each layer in a docker image"
    homepage "https://github.com/wagoodman/dive"
    version "0.4.1"

    url "https://github.com/wagoodman/dive/releases/download/v0.4.1/dive_0.4.1_darwin_amd64.tar.gz"
    sha256 "658178f1986dbde48b36614a05349abc8fc0b5c4ed8715b3cefa468485632518"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dive")
    end

    def caveats; <<~EOS
        Executable linked as "dive".
        EOS
    end
end
