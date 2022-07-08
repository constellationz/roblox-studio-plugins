-- Information for this plugin's screen gui

local GUI_PARENT = game:GetService("StarterGui")

local plugin_info = require(script.Parent.plugin_info)

-- Load the module
---@param plugin any The roblox plugin state
---@return table gui The gui object.
local function load(plugin)
	local gui = {}

	-- Remove old gui
	for _, child in GUI_PARENT:GetChildren() do
		if child.Name == plugin_info.id then
			child:Destroy()
		end
	end

	-- Make a new gui
	gui.instance = Instance.new("ScreenGui")
	gui.instance.Archivable = false
	gui.instance.Name = plugin_info.id
	gui.instance.Enabled = false
	gui.instance.Parent = GUI_PARENT

	-- Is the gui enabled?
	---@return boolean is_enabled
	function gui.enabled()
		return gui.instance.Enabled
	end

	-- Enable the gui
	function gui.enable()
		gui.instance.Enabled = true
	end

	-- Disable the gui
	function gui.disable()
		gui.instance.Enabled = false
	end

	-- Toggle the plugin gui.
	function gui.toggle()
		if gui.enabled() then
			gui.disable()
		else
			gui.enable()
		end
	end

	return gui
end

return {
	load = load
}
