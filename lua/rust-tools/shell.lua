local M = {}

local function is_windows()
  local sysname = vim.loop.os_uname().sysname
  return sysname == "Windows" or sysname == "Windows_NT"
end

local function is_nushell()
  ---@diagnostic disable-next-line: missing-parameter
  local shell = vim.loop.os_getenv("SHELL")
  local nu = "nu"
  -- Check if $SHELL ends in "nu"
  return shell ~= nil and shell:sub(-string.len(nu)) == nu
end

---Get a new command which is a chain of all the old commands
---Note that a space is not added at the end of the returned command string
---@param commands table
function M.chain_commands(commands)
  local separator = is_windows() and " | " or is_nushell() and ";" or " && "
  local ret = ""

  for i, value in ipairs(commands) do
    local is_last = i == #commands
    ret = ret .. value

    if not is_last then
      ret = ret .. separator
    end
  end

  return ret
end

---@param command string
---@param args table
function M.make_command_from_args(command, args)
  local ret = command .. " "

  for _, value in ipairs(args) do
    ret = ret .. value .. " "
  end

  return ret
end

return M
