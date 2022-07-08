-- Information for this plugin

return {
	-- The name that will be displayed
	name = "My Plugin",

	-- A unique Id for this plugin.
	id = "plugin_info_unique_id",

	-- Information for this plugin's widget.
	-- See https://developer.roblox.com/en-us/api-reference/function/Plugin/CreateDockWidgetPluginGui
	widget_info = DockWidgetPluginGuiInfo.new(
		Enum.InitialDockState.Float, -- Widget will be initialized as a floating panel
		true, -- Widget will be initially enabled
		false, -- Don't override previous enabled state
		200, -- Default width of floating window
		300, -- Default height of floating window
		150, -- Minimum width of floating window
		150 -- Minimum height of floating window
	)
}
