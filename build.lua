module = "catppuccinpalette"
excludefiles = {".link.md", "*~","build.lua","config-*.lua"}

tagfiles = {"*.dtx", "latex.tera"}

function update_tag(filename, content, tagname, tagdate)
	if filename == "catppuccinpalette.dtx" then
		return string.gsub(content, "\n(%%<package>\\ProvidesPackage{catppuccinpalette})%[%d%d%d%d%-%d%d%-%d%d% v%d+%.%d+%.%d+% (.*)]\n", "\n%1["..tagdate.." v"..tagname.." %2]\n")
	elseif filename == "beamercolorthemecatppuccin.dtx" then
		return string.gsub(content, "\n(%%<package>\\ProvidesPackage{beamercolorthemecatppuccin})%[%d%d%d%d%-%d%d%-%d%d% v%d+%.%d+%.%d+% (.*)]\n", "\n%1["..tagdate.." v"..tagname.." %2]\n")
	elseif filename == "latex.tera" then
		local tagyear, tagmonth, tagday = tagdate:match("(%d%d%d%d)%-(%d%d)%-(%d%d)")
		return string.gsub(
			content,
			"\npackageVersion: 1.2.0\nversionDate:\n    year: \"2025\"\n    month: \"07\"\n    day: \"19\"",
			"\npackageVersion: "..tagname.."\nversionDate:\n    year: \""..tagyear.."\"\n    month: \""..tagmonth.."\"\n    day: \""..tagday.."\""
		)
	end
end
