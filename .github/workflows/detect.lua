package.path = package.path .. ';.\\.github\\workflows\\?.lua;'


local sysdetect = require "sysdetect"
print( sysdetect.detect() )
print()
