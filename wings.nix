{ lib, buildGo120Module, fetchFromGitHub }:

buildGo120Module rec {
  pname = "pterodactyl-wings";
  version = "c9d92f7bac6c9bfc959844bb04c13929be4b87ee";

  src = fetchFromGitHub {
    owner = "pterodactyl";
    repo = "wings";
    rev = "${version}";
    sha256 = "sha256-1GccS9E5Cc4pYUBue9qwFj+2an22Pg4PFp8JwU2EIdA=";
  };

  vendorSha256 = "sha256-1uiaE1E1poILQLHDLujLdwE576fFMq2rwbd7GcBV2j8=";
  subPackages = [ "." ];

  ldflags = [
    "-X github.com/pterodactyl/wings/system.Version=${version}"
  ];
}
