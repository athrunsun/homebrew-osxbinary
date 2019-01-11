class GoProxy < Formula
    desc "A high performance HTTP(S), websocket, TCP, UDP,Secure DNS, Socks5 proxy server implemented by golang. Supports chain-style proxies,nat forwarding in different lan,TCP/UDP port forwarding, SSH forwarding."
    homepage "https://github.com/snail007/goproxy"
    version "6.5"

    url "https://github.com/snail007/goproxy/releases/download/v#{version}/proxy-darwin-amd64.tar.gz"
    sha256 "134ece99bfb5b9be0e387e2884519df39debe4cb2421d96a8c965614dbca0ba7"

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
