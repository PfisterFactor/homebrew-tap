class Omp < Formula
  desc "AI coding agent for the terminal (read, bash, edit, write tools)"
  homepage "https://github.com/PfisterFactor/oh-my-pi"
  version "16.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-darwin-arm64"
      sha256 "f165adeb2e460ea9d5083201a81931393cba3422eb1d9a7071df82acef94a981"
    end
    on_intel do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-darwin-x64"
      sha256 "3e1092e4e182b4789b6da592a116dceee3b4b028bb1fae122a680ef9c3e28c3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-linux-arm64"
      sha256 "edf241d663dda93e2a2e934134153bfba8b8796d37cb3d2deb84427733e9d06e"
    end
    on_intel do
      url "https://github.com/PfisterFactor/oh-my-pi/releases/download/main-latest/omp-linux-x64"
      sha256 "8b25146d5a6aca6226ad2717b28f353d186ec2896f8d81d038dd8befb3f6cf34"
    end
  end

  def install
    # Release assets are bare executables, not archives.
    binary = Dir["omp-*"].first
    bin.install binary => "omp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omp --version")
  end
end
