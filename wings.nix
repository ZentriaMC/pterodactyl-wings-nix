{ lib, buildGo119Module, fetchFromGitHub }:

buildGo119Module rec {
  pname = "pterodactyl-wings";
  version = "1.11.6";

  src = fetchFromGitHub {
    owner = "pterodactyl";
    repo = "wings";
    rev = "v${version}";
    sha256 = "sha256-lDJ0/yxmS7+9TVp3YpEdQQb12R4i2GyQ0w6RXoC5NHs=";
  };

  vendorSha256 = "sha256-VApv+VSot/GmOyU3pBlOvHYG0oE3fCtTxN5F3PsYYf0=";
  subPackages = [ "." ];

  ldflags = [
    "-X github.com/pterodactyl/wings/system.Version=${version}"
  ];
}
