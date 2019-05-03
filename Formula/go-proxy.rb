class GoProxy < Formula
    desc "A high performance HTTP(S), websocket, TCP, UDP,Secure DNS, Socks5 proxy server implemented by golang. Supports chain-style proxies,nat forwarding in different lan,TCP/UDP port forwarding, SSH forwarding."
    homepage "https://github.com/snail007/goproxy"
    version "7.3"

    url "https://github.com/snail007/goproxy/releases/download/v#{version}/proxy-darwin-amd64.tar.gz"
    sha256 "d4142b13fe75f5bf75b142722fcd6fefdfbfe05e5c5e5e8da00e3cd45c572a97"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/proxy" => "goproxy")
    end

    def caveats; <<~EOS
        Executable linked as "goproxy".
        EOS
    end
end
