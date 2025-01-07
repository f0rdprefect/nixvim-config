{ pkgs, ... }:

{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        nixd.enable = true;
        ruff.enable = true;
        pylsp = {
          enable = true;
        };
        omisharp.enable = true;
        rust-analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;

        };
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
  };
}
