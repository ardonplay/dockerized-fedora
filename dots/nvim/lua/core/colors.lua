vim.opt.termguicolors = true

function SetColor(color)
    color = color or "onedark"
    vim.o.background = "dark"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    vim.api.nvim_set_hl(0, "ColorColumn", {bg = "none"})
    vim.api.nvim_set_hl(0, "StatusLine", {bg = "none"})
    vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
    vim.api.nvim_set_hl(0, "SignColumn", {bg = "none"})
    vim.api.nvim_set_hl(0, "FloatBorder", {bg = "none"})
    vim.api.nvim_set_hl(0, "GitSignsAdd", {bg = "none"})
    vim.api.nvim_set_hl(0, "GitSignsChange", {bg = "none"})
    vim.api.nvim_set_hl(0, "GitSignsDelete", {bg = "none"})
    vim.api.nvim_set_hl(0, "DiagnosticSignError", {bg = "none", fg="#FF6969"})
    vim.api.nvim_set_hl(0, "DiagnosticSignHint", {bg = "none", fg="#7BD3EA"})
    vim.api.nvim_set_hl(0, "DiagnosticSignWarn", {bg = "none", fg="#FFF78A"})
    vim.api.nvim_set_hl(0, "DiagnosticSignInfo", {bg = "none", fg="#7BD3EA"})
end

SetColor('gruvbox')

