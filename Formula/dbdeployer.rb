class Dbdeployer < Formula
    desc "A tool that deploys MySQL database servers easily."
    homepage "https://github.com/datacharmer/dbdeployer"
    version "1.4.0"

    url "https://github.com/datacharmer/dbdeployer/releases/download/#{version}/dbdeployer-#{version}.osx.tar.gz"
    sha256 "0f0081c46109ddd768affb7b43b814cd3954236c518e2af6453e2429a95ee432"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbdeployer-#{version}.osx" => "dbdeployer")
    end

    def caveats; <<~EOS
        Executable is linked as "dbdeployer".
        EOS
    end
end
