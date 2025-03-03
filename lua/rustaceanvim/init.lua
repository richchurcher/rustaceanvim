---@toc rustaceanvim.contents

---@mod intro Introduction
---@brief [[
---This plugin automatically configures the `rust-analyzer` builtin LSP client
---and integrates with other rust tools.
---@brief ]]
---
---@mod rustaceanvim
---
---@brief [[
---
---Commands:
---
--- `:RustAnalyzer start` - Start the LSP client.
--- `:RustAnalyzer stop` - Stop the LSP client.
---
---The `:RustLsp` command is available after the LSP client has initialized.
---It accepts the following subcommands:
---
--- `runnables [last]?` - Run tests, etc.
---                       `last` means run the last test that was run.
--- `expandMacro` - Expand macros recursively.
--- `moveItem [up|down]` - Move items up or down.
--- `hover [action|range]` - Hover actions, or hover over visually selected range.
--- `openCargo` - Open the Cargo.toml file for the current package.
--- `parentModule` - Open the current module's parent module.
--- `joinLines` - Join adjacent lines.
--- `ssr [query]` - Structural search and replace.
--- `crateGraph [backend]` - Create and view a crate graph with graphviz.
--- `syntaxTree` - View the syntax tree.
--- `flyCheck` - Run `cargo check` or another compatible command (f.x. `clippy`)
---              in a background thread and provide LSP diagnostics based on
---              the output of the command.
---              Useful in large projects where running `cargo check` on each save
---              can be costly.
---@brief ]]

local M = {}
return M
