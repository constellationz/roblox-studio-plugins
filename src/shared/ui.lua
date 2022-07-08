-- Used to create UI declaratively.

-- A UI state.
---@alias adder {}
---@alias theme {}
---@alias parent any
---@alias instance any
---@alias ui_state {instance: instance, parent: parent, theme: function, add: adder, ui: {[number]: ui_state}}
local add = {}
local ui_state = {}

-- Create a new UI adder for a UI state.
---@return adder add The adder for this UI state.
local function create_adder(ui)
	local adder = setmetatable({
		ui = ui
	}, {__index = add})
	return adder
end

-- Create a new UI instance.
---@param parent parent The parent this instance should go into.
---@return instance ui_instance The UI instance that was created.
local function new_ui_instance(parent)
	local ui_instance = {}
	return ui_instance
end

-- Create a new ui state.
---@param parent parent The parent of this UI state.
---@return ui_state ui The new UI state.
local function create_ui_state(parent)
	local ui = setmetatable({
		parent = parent,
		instance = new_ui_instance(parent),
		theme = function(_)

		end,
		ui = {},
	}, {__index = ui_state})
	ui.add = create_adder(ui)
	return ui
end

-- Add a ui state as a child
---@param ui ui_state The UI to add to the parent ui state
---@return ui_state ui The UI that was just added.
function add:add_child_ui_state(ui)
	self.ui.ui[#self.ui.ui + 1] = ui
	return ui
end

-- Add a button to this UI state.
---@param data { clicked: function }
---@return ui_state button The button that was created.
function add:button(data)
	local button = self:add_child_ui_state(create_ui_state(self.ui.instance))

	-- Set this button's state.
	button.clicked = data.clicked

	-- Create a button in the instance tree.
	local button_instance = Instance.new("ImageButton")
	button_instance.Parent = button.parent

	local button_text = Instance.new("TextLabel")
	button_text.BackgroundTransparency = 1
	button_text.Size = UDim2.new(1, 0, 1, 0)
	button_text.Parent = button_instance

	-- Theme this button.
	button.theme = function(theme)

	end

	return button
end

return {
	create_ui_state = create_ui_state
}
