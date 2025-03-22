local wezterm = require "wezterm"

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catppuccin Mocha"
    -- return "Catppuccin Macchiato"
    -- return "Afterglow (Gogh)"
    -- return "Apple System Colors"
    -- return "Arthur"
    -- return "astromouse (terminal.sexy)"
    -- return "Atelier Cave (base16)"
    -- return "Atelier Dune (base16)"
    -- return "Atelierdune (dark) (terminal.sexy)"
    -- return "Atelier Plateau (base16)"
    -- return "Atelier Savanna (base16)"
    -- return "Atelier Sulphurpool (base16)"
    -- return "kanagawabones"
  else
    return "Catppuccin Frappe"
    -- return "Atelier Savanna Light (base16)"
  end
end

return {
  set_environment_variables = {
    COLORTERM="truecolor",
  },
  -- ...your existing config
  color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
}
