local options = {
    -- Disable installing parsers via TSInstall since Nix is providing them
    auto_install = false,
    
    -- If you're using nvim-treesitter.withAllGrammars from Nix, no need to list parsers here
    -- If you're using selected grammars, you would list them here for documentation,
    -- but Nix is still the one providing them
    ensure_installed = {},
  }
  
  return options