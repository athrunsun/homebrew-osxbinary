class ClashBinary < Formula
    desc "A rule-based tunnel in Go."
    homepage "https://github.com/Dreamacro/clash"
    version "1.9.0"

    arch = "amd64"

    if Hardware::CPU.arm?
        arch = "arm64"
    end

    url "https://github.com/Dreamacro/clash/releases/download/v#{version}/clash-darwin-#{arch}-v#{version}.gz"

    if Hardware::CPU.arm?
        sha256 "c6f1622b0fe779a30d3fdcd12c1e88cab24edd74dd5c4c851ab6ad3a87304533"
    else
        sha256 "6195fcfc9018802f409d2234f17bb51c3e31a446b0ce570f2f0abb7ca354d443"
    end

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/clash-darwin-#{arch}" => "clash")
    end

    def caveats; <<~EOS
        Executable is linked as "clash".
        EOS
    end
end
