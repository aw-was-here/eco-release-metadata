import re
from glob import glob
from distutils.version import LooseVersion

versions = glob("[0-9]*.[0-9]*.[0-9]*")
versions.sort(key=LooseVersion,reverse=True)
print versions
