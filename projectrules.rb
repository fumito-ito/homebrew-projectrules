class Projectrules < Formula
    desc "Generate .mdc files based on provided keywords"
    homepage "https://github.com/fumito-ito/ProjectRules"

    if OS.mac?
        url "https://github.com/fumito-ito/ProjectRules/releases/download/0.0.1/projectrules-macos.tar.gz"
        sha256 "bb7b46206df5e1e96c235632ed5437521f3b4e9615283bf5934be3e984982fe3"
    else
        url "https://github.com/fumito-ito/ProjectRules/releases/download/0.0.1/projectrules-ubuntu.tar.gz"
        sha256 "48c0761f0344ce9db11c5e905796b765a305867e839dd3b440c67144f0b85938"
    end
    license "MIT"
  
    def install
      bin.install "ProjectRules"
    end
  
    test do
      system "#{bin}/ProjectRules", "--help"
    end
  end