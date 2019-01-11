class LazygitBinary < Formula
    desc "Simple terminal UI for git commands"
    homepage "https://github.com/jesseduffield/lazygit"
    version "0.2.1"

    url "https://github.com/jesseduffield/lazygit/releases/download/v#{version}/lazygit_#{version}_Darwin_x86_64.tar.gz"
    sha256 "a08b2588e1c0268d6ca1a8607bb5439b2828a7040ce2236871ab9e8143ebfb32"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/lazygit")
        bin.install_symlink("#{libexec}/lazygit" => "lazygit")
    end

    def caveats; <<~EOS
        Executable is linked as "lazygit".
        EOS
    end
end
