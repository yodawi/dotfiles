import os
import ycm_core

flags = [
        '-std=c++17',
        ]

SOURCE_EXTENSIONS = [ '.cpp', '.cxx', '.cc', '.c', ]

def FlagsForFile( filename, **kwargs ):
    return {
            'flags': flags,
            'do_cache': True
            }
