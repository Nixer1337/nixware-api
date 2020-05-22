cd ./src
mkdocs build

set "src=./site"
set "dst=../"
robocopy "%src%" "%dst%" /e /is /mov

RD /S /Q "./site"