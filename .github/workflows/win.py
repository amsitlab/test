from sys import platform, exec_prefix, base_prefix
from os import environ
if __name__ == '__main__':
   print('paltform', platform)
   print('base_prefix', base_prefix)
   print('exec_prefix', exec_prefix)
   print('environments:"
   for key, val in environ.items():
      print('  ', key, val)
   
   
