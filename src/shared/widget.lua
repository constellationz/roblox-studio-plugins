-- Information for this plugin's widget

local plugin_info = require(script.Parent.plugin_info)

-- Load the module
---@param plugin any The roblox plugin state
---@return table widget The widget object.
local function load(plugin)
	local widget = {}

	-- Make the widget instance.
	widget.instance = plugin:CreateDockWidgetPluginGui(plugin_info.id, plugin_info.widget_info)
	widget.instance.Title = plugin_info.name

	-- Toggle the plugin widget.
	function widget.toggle()
		widget.instance.Enabled = not widget.instance.Enabled
	end

	return widget
end

return {
	load = load
}
