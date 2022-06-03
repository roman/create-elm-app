{
  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs {
        system = "x86_64-linux";
      };
    in
      {
        devShell = {
          x86_64-linux = {
            default = pkgs.mkShell {
              buildInputs = [ pkgs.nodejs ];
            };
          };
        };
      };
}
