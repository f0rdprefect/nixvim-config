{
  # Add avante to your plugin list
  plugins = {
    avante = {
      enable = true;
      settings = {
        debug = false;
        provider = "openrouter";
        vendors = {
          openrouter = {
            __inherited_from = "openai";
            endpoint = "https://openrouter.ai/api/v1";
            api_key_name = "OPENROUTER_API_KEY";
            model = "meta-llama/llama-3.3-70b-instruct";
            headers = {
              "HTTP-Referer" = "http://localhost:8080"; # Required by OpenRouter
              "X-Title" = "NeoVim"; # Optional but recommended
            };
          };
        };
      };
    };
  };
}
