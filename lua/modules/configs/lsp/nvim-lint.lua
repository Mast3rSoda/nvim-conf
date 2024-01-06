return function ()
    require('lint').linters_by_ft = {
        c = {"clangtidy"},
        cpp = {"clangtidy"},
        go = {"golangci-lint"},

}
end