-- Example plugin

-- Set the plugin in the global state
_G.plugin = plugin

-- local ui = require(script.Parent.ui)
local gui = require(script.gui).load(plugin)
local widget = require(script.widget).load(plugin)
local toolbar = require(script.toolbar).load(plugin)

-- Add a button to some instance
---@param parent any The parent to add this button to
---@return any button The button that was added.
local function add_button(parent)
	local button = Instance.new("TextButton")
	button.BorderSizePixel = 0
	button.TextSize = 20
	button.TextColor3 = Color3.new(1,0.2,0.4)
	button.AnchorPoint = Vector2.new(0.5,0.5)
	button.Size = UDim2.new(1,0,1,0)
	button.Position = UDim2.new(0.5,0,0.5,0)
	button.SizeConstraint = Enum.SizeConstraint.RelativeYY
	button.Text = "Click Me"
	button.Parent = parent
	return button
end

local widget_button = toolbar.button("Toggle Widget", "Toggle Widget", "rbxassetid://3264014749")
add_button(widget.instance)
widget_button.Click:Connect(widget.toggle)

local gui_button = toolbar.button("Toggle Gui", "Toggle Gui", "rbxassetid://3264014749")
add_button(gui.instance)
gui_button.Click:Connect(gui.toggle)
