local M = {}

---@param bindings Bind[]
function M.CreateBindings(bindings)
	for _, v in pairs(bindings) do
		local bind = M.Bind.new(v)

		hl.bind(bind.bind, bind.action)
	end
end

---@class Bind: {bind: string, action: function|HL.Dispatcher,  opts: {}?, useLeader: boolean?}
M.Bind = {}

---@return Bind
---@param t Bind
function M.Bind.new(t)
	setmetatable(t, { __index = { useLeader = true } })
	local bind, action, opts, useLeader = t[1] or t.bind, t[2] or t.action, t[3] or t.opts, t[4] or t.useLeader

	if useLeader then
		bind = MainMod .. " + " .. bind
	end

	return {
		bind = bind,
		useLeader = useLeader,
		opts = opts,
		action = action,
	}
end

return M
