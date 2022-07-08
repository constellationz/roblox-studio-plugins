-- Example plugin

local modules = script.Parent.modules
local dui = require(modules.dui)
local gui = require(modules.gui).load(plugin)
local widget = require(modules.widget).load(plugin)
local toolbar = require(modules.toolbar).load(plugin)

-- Toggle widget
toolbar.button(
	"Toggle Widget",
	"Toggle Widget",
	"rbxassetid://3264014749"
).Click:Connect(widget.toggle)

-- Toggle gui
toolbar.button(
	"Toggle Gui",
	"Toggle Gui",
	"rbxassetid://3264014749"
).Click:Connect(gui.toggle)

-- Create ui for gui
local ui = dui.new(gui.instance)
