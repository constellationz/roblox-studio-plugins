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

	-- Is the widget enabled?
	---@return boolean is_enabled
	function widget.enabled()
		return widget.instance.Enabled
	end

	-- Enable the widget
	function widget.enable()
		widget.instance.Enabled = true
	end

	-- Disable the widget
	function widget.disable()
		widget.instance.Enabled = false
	end

	-- Toggle the plugin widget.
	function widget.toggle()
		if widget.enabled() then
			widget.disable()
		else
			widget.enable()
		end
	end

	return widget
end

return {
	load = load
}
