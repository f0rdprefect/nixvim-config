{ pkgs, ... }:

{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        elixirls.enable = true;
        gleam.enable = false;
        gopls.enable = true;
        kotlin_language_server.enable = false;
        nixd.enable = true;
        prolog_ls = {
          enable = true;
          package = pkgs.swi-prolog;
        };
        ruff.enable = true;
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
    rustaceanvim.enable = true;
  };
}
