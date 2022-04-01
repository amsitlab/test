package.path = package.path .. ';.\\.github\\workflows\\?.lua;'


local sysdetect = require "sysdetect"
local sys, arch = sysdetect.detect()
if sys == "windows" the
   local popen = io.popen
   local close = io.close
   local output = io.output
   local wrife = io.write

   local p = popen('powershell Get-ChildItem -Path .github\\workflows\\* -Includr *.yml')
   for l in p:lines() do
      print(l)
   end

   local rc = { p:close() }
   for k, v in pairs(rc) do
      print('rc', k, v)
   end
end
