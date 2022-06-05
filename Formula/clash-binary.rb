class ClashBinary < Formula
    desc "A rule-based tunnel in Go."
    homepage "https://github.com/Dreamacro/clash"
    version "1.10.6"

    @@os = "darwin"
    @@arch = "amd64"

    if Hardware::CPU.arm?
        @@arch = "arm64"
    end

    url "https://github.com/Dreamacro/clash/releases/download/v#{version}/clash-#{@@os}-#{@@arch}-v#{version}.gz"
    sha256 "4716d1b2e22825fbede547841a1076473c18ae5a0f4f46417f3d9054dd868598"

    if Hardware::CPU.arm?
        sha256 "25f1c9effb734639d1e2176a4fd2e69ce10eb4b727f6af27cb0801b4a8eec538"
    end

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/clash-#{@@os}-#{@@arch}", "#{libexec}/clash")
        chmod(0755, "#{libexec}/clash")
        bin.install_symlink("#{libexec}/clash" => "clash")
    end

    def caveats; <<~EOS
        Executable is linked as "clash".
        EOS
    end

    test do
        system "#{bin}/clash", "-v"
    end
end
