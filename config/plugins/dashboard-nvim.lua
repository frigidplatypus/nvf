local logo = [[
███╗   ██╗██╗   ██╗███████╗
████╗  ██║██║   ██║██╔════╝
██╔██╗ ██║██║   ██║█████╗  
██║╚██╗██║╚██╗ ██╔╝██╔══╝  
██║ ╚████║ ╚████╔╝ ██║     
╚═╝  ╚═══╝  ╚═══╝  ╚═╝     
]]
logo = "\n\n" .. logo .. "\n\n"
require("dashboard").setup({
    theme = "doom",
    change_to_vcs_root = true,
    config = {
        header = vim.split(logo, "\n"),
        footer = {"Hi, ch4og!"},
        center = {
            {
                action = "FzfLua files",
                desc = " Find File",
                icon = " ",
                key = "e"
            },
            {
                action = "ene | startinsert",
                desc = " New File",
                icon = " ",
                key = "n"
            },
            {
                action = "FzfLua oldfiles",
                desc = " Recent Files",
                icon = " ",
                key = "r"
            },
            {
                action = "FzfLua live_grep",
                desc = " Find Text",
                icon = " ",
                key = "f"
            }, {
                action = 'lua require("persistence").load()',
                desc = " Restore Session",
                icon = " ",
                key = "s"
            },
            {action = "LazyGit", desc = " LazyGit", icon = " ", key = "g"},
            {action = "qa", desc = " Quit", icon = " ", key = "q"}
        }
    }
})
