#!/bin/bash

echo 'Start release for project: '$1 #$1 path of the project to be released
cd $1 && git tag $2 #$2 the release tag value e.q: vX.X.X
python3 setup.py sdist bdist_wheel
twine upload dist/* --repository-url https://upload.pypi.org/legacy/
