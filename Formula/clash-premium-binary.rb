class ClashPremiumBinary < Formula
    desc "A rule-based tunnel in Go (premium version)."
    homepage "https://github.com/Dreamacro/clash"
    version "2022.05.18"

    @@os = "darwin"
    @@arch = "amd64"

    if Hardware::CPU.arm?
        @@arch = "arm64"
    end

    url "https://github.com/Dreamacro/clash/releases/download/premium/clash-#{@@os}-#{@@arch}-#{version}.gz"
    sha256 "ef109cb353ac0674bcf870f717619dffd2b6c0f70efb602f494e5a03efcfe688"
    
    if Hardware::CPU.arm?
        sha256 "1cfaef9403ea4836d4cd58fe4061c783f780fb1ee213c70265e54ed69e6a03a7"
    end

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/clash-#{@@os}-#{@@arch}", "#{libexec}/clash-premium")
        chmod(0755, "#{libexec}/clash-premium")
        bin.install_symlink("#{libexec}/clash-premium" => "clash-premium")
    end

    def caveats; <<~EOS
        Executable is linked as "clash-premium".
        EOS
    end

    test do
        system "#{bin}/clash", "-v"
    end
end
