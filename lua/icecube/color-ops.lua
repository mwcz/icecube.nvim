local function clamp(x, lo, hi)
	return math.min(math.max(x, lo), hi)
end

-- sRGB <-> linear RGB
local function srgb_to_linear(c)
	c = c / 255
	if c <= 0.04045 then
		return c / 12.92
	end
	return ((c + 0.055) / 1.055) ^ 2.4
end

local function linear_to_srgb(c)
	if c <= 0.0031308 then
		return clamp(math.floor(c * 12.92 * 255 + 0.5), 0, 255)
	end
	return clamp(math.floor((1.055 * c ^ (1 / 2.4) - 0.055) * 255 + 0.5), 0, 255)
end

-- linear RGB -> OKLAB
local function linear_rgb_to_oklab(r, g, b)
	local l = 0.4122214708 * r + 0.5363325363 * g + 0.0514459929 * b
	local m = 0.2119034982 * r + 0.6806995451 * g + 0.1073969566 * b
	local s = 0.0883024619 * r + 0.2817188376 * g + 0.6299787005 * b

	l = l ^ (1 / 3)
	m = m ^ (1 / 3)
	s = s ^ (1 / 3)

	return 0.2104542553 * l + 0.7936177850 * m - 0.0040720468 * s,
		1.9779984951 * l - 2.4285922050 * m + 0.4505937099 * s,
		0.0259040371 * l + 0.7827717662 * m - 0.8086757660 * s
end

-- OKLAB -> linear RGB
local function oklab_to_linear_rgb(L, a, b)
	local l = L + 0.3963377774 * a + 0.2158037573 * b
	local m = L - 0.1055613458 * a - 0.0638541728 * b
	local s = L - 0.0894841775 * a - 1.2914855480 * b

	l = l * l * l
	m = m * m * m
	s = s * s * s

	return 4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s,
		-1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s,
		-0.0041960863 * l - 0.7034186147 * m + 1.7076147010 * s
end

return {
	LightenDarkenColor = function(col, amt)
		col = col:gsub("^#", "")
		local num = tonumber(col, 16)
		local r = srgb_to_linear(math.floor(num / 0x10000))
		local g = srgb_to_linear(math.floor(num / 0x100) % 0x100)
		local b = srgb_to_linear(num % 0x100)

		local L, a, ob = linear_rgb_to_oklab(r, g, b)
		L = clamp(L + amt / 255, 0, 1)
		r, g, b = oklab_to_linear_rgb(L, a, ob)

		return string.format("#%02x%02x%02x", linear_to_srgb(r), linear_to_srgb(g), linear_to_srgb(b))
	end,
}
