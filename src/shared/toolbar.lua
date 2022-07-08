-- Module for this plugin's toolbar

local plugin_info = require(script.Parent.plugin_info)

-- Load the toolbar
---@param plugin any The roblox plugin state
---@return table toolbar The toolbar object
local function load(plugin)
	local toolbar = {}

	-- Make the toolbar instance
	toolbar.instance = plugin:CreateToolbar(plugin_info.name)

	-- Create a toolbar button.
	---@return any button
	function toolbar.button(...)
		return toolbar.instance:CreateButton(...)
	end

	return toolbar
end

return {
	load = load
}
