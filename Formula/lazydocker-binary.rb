class LazydockerBinary < Formula
    desc "The lazier way to manage everything docker"
    homepage "https://github.com/jesseduffield/lazydocker"
    version "0.2.4"

    url "https://github.com/jesseduffield/lazydocker/releases/download/v#{version}/lazydocker_#{version}_Darwin_x86_64.tar.gz"
    sha256 "3f1876748e96ff5d071ea4d5a0956934e1e090beedef5440db081669b8c01f7f"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/lazydocker")
        bin.install_symlink("#{libexec}/lazydocker" => "lazydocker")
    end

    def caveats; <<~EOS
        Executable is linked as "lazydocker".
        EOS
    end
end
