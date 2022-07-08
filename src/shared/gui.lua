-- Information for this plugin's screen gui

local plugin_info = require(script.Parent.plugin_info)

-- Load the module
---@param plugin any The roblox plugin state
---@return table gui The gui object.
local function load(plugin)
	local gui = {}

	-- Remove old gui
	for _, child in game:GetService("CoreGui"):GetChildren() do
		if child.Name == plugin_info.id then
			child:Destroy()
		end
	end

	-- Make a new gui
	gui.instance = Instance.new("ScreenGui")
	gui.instance.Archivable = false
	gui.instance.Name = plugin_info.id
	gui.instance.Enabled = false
	gui.instance.Parent = game:GetService("CoreGui")

	function gui.toggle()
		gui.instance.Enabled = not gui.instance.Enabled
	end

	return gui
end

return {
	load = load
}
