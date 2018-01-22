class GoBinary < Formula
    desc "Go programming environment, binary installation."
    homepage "https://golang.org"
    version "1.8.3"

    option "with-mirror", "Download from https://mirrors.ustc.edu.cn/golang/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "mirror"
        url "https://mirrors.ustc.edu.cn/golang/go#{version}.darwin-amd64.tar.gz"
    else
        url "https://storage.googleapis.com/golang/go#{version}.darwin-amd64.tar.gz"
    end

    sha256 "f20b92bc7d4ab22aa18270087c478a74463bd64a893a94264434a38a4b167c05"

    bottle :unneeded
    conflicts_with "go"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end

    def caveats; <<~EOS
        As of go 1.2, a valid GOPATH is required to use the `go get` command:
            https://golang.org/doc/code.html#GOPATH
        So don't forget to set GOROOT:
            export GOROOT=$(brew --prefix go)
        You may wish to add the GOROOT-based install location to your PATH:
            export PATH=$PATH:$GOROOT/bin
        Besides you may also want to set GOPATH:
            export GO_PATH=$HOME/go
        EOS
    end
end
