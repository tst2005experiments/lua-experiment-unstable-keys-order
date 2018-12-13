
local function keys(t)
	local r={}
	for k,v in pairs(t) do
		table.insert(r,k)
	end
	return table.concat(r," ")
end

local results={}
local t10 = {["1"]=0,["2"]=0,["3"]=0,["4"]=0,["5"]=0,["6"]=0,["7"]=0,["8"]=0,["9"]=0}
table.insert(results, keys(t10) )

v=0
local t16= {["2"]=v,["1"]=v,["3"]=v,["4"]=v,["5"]=v,["6"]=v,["7"]=v,["8"]=v,["9"]=v,a=0,b=0,c=0,d=0,e=0,f=0}
local k = keys(t16)
local k2=k:gsub(" ","")
table.insert(results, k)

t16[k2]=v

local k = keys(t16)
table.insert(results, k)

local t16bis = {[k2]=v, ["2"]=v,["1"]=v,["3"]=v,["4"]=v,["5"]=v,["6"]=v,["7"]=v,["8"]=v,["9"]=v,a=0,b=0,c=0,d=0,e=0,f=0}
local k = keys(t16bis)
table.insert(results, k)

for i,v in ipairs(results) do
	print(i,v)
end
