# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.nodejs_20
    pkgs.python3
    pkgs.php83
    pkgs.sqlite.bin
  ];
  # Sets environment variables in the workspace
  env = { };
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      # "vscodevim.vim"
      "cweijan.dbclient-jdbc"
      "cweijan.vscode-database-client2"
      "DEVSENSE.composer-php-vscode"
      "DEVSENSE.intelli-php-vscode"
      "DEVSENSE.phptools-vscode"
      "DEVSENSE.profiler-php-vscode"
      "bmewburn.vscode-intelephense-client"
    ];

    
    # Enable previews and customize configuration
    previews = {
      enable = true;
      previews = {
        web = {
          # command = [ "python3" "-m" "http.server" "$PORT" "--bind" "0.0.0.0" ];
          command = [ "php" "-S" "0.0.0.0:$PORT" ];
          manager = "web";
        };
      };
    };
  };
}
