class GoProxy < Formula
    desc "A high performance HTTP(S), websocket, TCP, UDP,Secure DNS, Socks5 proxy server implemented by golang. Supports chain-style proxies,nat forwarding in different lan,TCP/UDP port forwarding, SSH forwarding."
    homepage "https://github.com/snail007/goproxy"
    version "7.4"

    url "https://github.com/snail007/goproxy/releases/download/v#{version}/proxy-darwin-amd64.tar.gz"
    sha256 "c70800f33b4bebe3b267b32a967331733b80928ca7f1ec5e3d5bee2bd668a279"

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
