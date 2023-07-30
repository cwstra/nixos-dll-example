let
  pkgs = import <nixpkgs> {};
  currentPath = builtins.toString ./.;
in pkgs.mkShell rec {
  name = "nixos-dll-example";

  buildInputs = with pkgs; [
    assimp
    dotnet-sdk_7
  ];
  shellHook = ''
    export DOTNET_ROOT="${pkgs.dotnet-sdk_7}";
    export MSBuildSDKsPath="${pkgs.dotnet-sdk_7}/sdk/$($DOTNET_ROOT/dotnet --version)/Sdks";
  '';
}
