class FxBinary < Formula
    desc "Command-line tool and terminal JSON viewer"
    homepage "https://github.com/antonmedv/fx"
    version "3.1.0"

    url "https://github.com/antonmedv/fx/releases/download/#{version}/fx-macos"
    sha256 "21f67d021bc42171875078b1acc25f02b7487ebd67a70572ae32572fe45ccd31"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/fx-macos")
        bin.install_symlink("#{libexec}/fx-macos" => "fx")
    end

    def caveats; <<~EOS
        Executable linked as "fx".
        EOS
    end
end
