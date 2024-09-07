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
                action = "Telescope find_files",
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
                action = "Telescope oldfiles",
                desc = " Recent Files",
                icon = " ",
                key = "r"
            },
            {
                action = "Telescope live_grep",
                desc = " Find Text",
                icon = " ",
                key = "f"
            },
            {action = "qa", desc = " Quit", icon = " ", key = "q"}
        }
    }
})
