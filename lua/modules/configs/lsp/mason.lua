return function()
    local ui = require("modules.utils.icons").get("ui", false)
    require("mason").setup({
        ui = {
            icons = {
                package_installed = ui.Accepted,
                package_pending = "➜",
                package_uninstalled = ui.Close_alt
                -- package_installed = "✓",
                -- package_pending = "➜",
                -- package_uninstalled = "✗"

            }
        }
    })
end

