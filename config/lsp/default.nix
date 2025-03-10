{ pkgs, ... }:

{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        marksman.enable = true;
        bashls.enable = true;
        nixd.enable = true;
        ruff.enable = true;
        pylsp = {
          enable = true;
        };
        omnisharp.enable = true;
        rust_analyzer = {
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
