cd ./src
mkdocs build

RD /S /Q "./site/assets"

set "src=./site/"
set "dst=../"
robocopy "%src%" "%dst%" /e /is /mov

RD /S /Q "./site"