local function clamp(component)
	return math.min(math.max(component, 0), 255)
end

return {
	LightenDarkenColor = function(col, amt)
		-- remove leading # if it exists
		col = col:gsub("^#", "")
		local num = tonumber(col, 16)
		local r = math.floor(num / 0x10000) + amt
		local g = (math.floor(num / 0x100) % 0x100) + amt
		local b = (num % 0x100) + amt
		-- return string.format("%#x", clamp(r) * 0x10000 + clamp(g) * 0x100 + clamp(b))
		-- return #rrggbb not 0xrrggbb
		return string.format("#%02x%02x%02x", clamp(r), clamp(g), clamp(b))
	end,
}
