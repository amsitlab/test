package.path = package.path .. ';.\\.github\\workflows\\?.lua;'


local sysdetect = require "sysdetect"
local sys, arch = sysdetect.detect()
if sys == "windows" then
   local popen = io.popen
   local close = io.close
   local output = io.output
   local write = io.write

   local p = popen('powershell Get-ChildItem -Path .github\\workflows\\* -Name -Include *.yml')
   for l in p:lines() do
      print(l)
   end

   local rc = { close(p) }
   for k, v in pairs(rc) do
      print('rc', k, v)
   end
end
