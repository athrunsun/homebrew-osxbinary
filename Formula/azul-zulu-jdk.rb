class AzulZuluJdk < Formula
    desc "Zulu Builds of OpenJDK"
    homepage "https://www.azul.com/downloads/zulu"
    version "11.2.3"

    url "https://cdn.azul.com/zulu/bin/zulu11.2.3-jdk11.0.1-macosx_x64.tar.gz"
    sha256 "1edf366ee821e5db8e348152fcb337b28dfd6bf0f97943c270dcc6747cedb6cb"

    bottle :unneeded

    conflicts_with "oracle-jdk-lts", :because => "both install java binaries"
    conflicts_with "sap-machine-jdk", :because => "both install java binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
