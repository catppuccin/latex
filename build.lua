module = "catppuccinpalette"
excludefiles = {".link.md", "*~","build.lua","config-*.lua"}

tagfiles = {"*.dtx", "latex.tera"}

function update_tag(filename, content, tagname, tagdate)
	if filename == "catppuccinpalette.dtx" then
		return string.gsub(content, "\n(\\ProvidesPackage{catppuccinpalette})%[%d%d%d%d%-%d%d%-%d%d% v%d+%.%d+%.%d+% (.*)]\n", "\n%1["..tagdate.." v"..tagname.." %2]\n")
	elseif filename == "beamercolorthemecatppuccin.dtx" then
		return string.gsub(content, "\n(\\ProvidesPackage{beamercolorthemecatppuccin})%[%d%d%d%d%-%d%d%-%d%d% v%d+%.%d+%.%d+% (.*)]\n", "\n%1["..tagdate.." v"..tagname.." %2]\n")
	elseif filename == "latex.tera" then
		local tagyear, tagmonth, tagday = tagdate:match("(%d%d%d%d)%-(%d%d)%-(%d%d)")
		return string.gsub(
			content,
			"\npackageVersion: %d+%.%d+%.%d+%\nversionDate:\n    year: \"%d%d%d%d\"\n    month: \"%d%d\"\n    day: \"%d%d\"",
			"\npackageVersion: "..tagname.."\nversionDate:\n    year: \""..tagyear.."\"\n    month: \""..tagmonth.."\"\n    day: \""..tagday.."\""
		)
	end
end
