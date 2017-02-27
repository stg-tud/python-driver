#!/bin/sh
PY3PKGDIR=`python3 -c "import os, sys;sys.stdout.write(os.path.dirname(os.__file__))"`
PY2PKGDIR=`python2 -c "import os, sys;sys.stdout.write(os.path.dirname(os.__file__))"`
echo $PY3PKGDIR
echo $PY2PKGDIR

time sh -c "./sendmsg.py --json $PY2PKGDIR/*.py $PY3PKGDIR/*.py|python_driver --json > /dev/null"
#time sh -c "./sendmsg.py --json /usr/lib/python2.7/*.py /usr/lib/python3.5/*.py|python_driver --json > /dev/null"
