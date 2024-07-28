return function()
    local uiIcons = require("modules.utils.icons").get("ui", false)
    require("mason").setup({
        ui = {
            icons = {
                package_installed = uiIcons.Accepted,
                package_pending = uiIcons.History,
                package_uninstalled = uiIcons.Close_alt
                -- package_installed = "✓",
                -- package_pending = "➜",
                -- package_uninstalled = "✗"

            }
        }
    })
end

