import urllib.request
import os
import sys

if len(sys.argv) < 3:
    print("Invalid arguments")
    exit(-1)

url = sys.argv[1]
filename = sys.argv[2]

if not os.path.exists(filename):
    urllib.request.urlretrieve(url, filename=filename)