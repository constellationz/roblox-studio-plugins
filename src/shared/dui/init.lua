-- Framework for building declarative UI

---@alias Instance any

-- Create a new UI.
---@param parent Instance
---@return table ui
local function new(parent)
	return {}
end

return {
	new = new
}
