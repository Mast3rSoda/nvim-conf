local global = require("core.global")
local vimpath = global.vim_path
local modules_dir = vimpath .. "/lua/modules"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)

local LazyLoader = {
    plugins = {}
}

function LazyLoader:get_plugins()
    local list = {}
    local full_plugin_path = vim.split(vim.fn.glob(modules_dir .. "/plugins/*.lua"), "\n")
    
    -- get all plugins
    for i, v in ipairs(full_plugin_path) do
        list[#list + 1] = v:sub(#modules_dir - 6)
        list[#list] = list[#list]:sub(0, #list[#list] - 4)

    end

    for _, p in ipairs(list) do
        local mod = require(p)
        for _, v in pairs(mod) do
            self.plugins[#self.plugins + 1] = v
        end
    end

end

local opts = {}
LazyLoader:get_plugins()
require("lazy").setup(LazyLoader.plugins, opts)
