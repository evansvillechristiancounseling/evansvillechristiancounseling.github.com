# Evansville Christian Counseling

A simple site for a counseling service in Evansville, IN run by Vickie Knowlden.

## Colors

1. [Dr. Strange Clinic](http://colorschemedesigner.com/#0qc1Tmh9Vw0w0)
2. [Ocean Cheese](http://colorschemedesigner.com/#0qc1Tmh9Vw0w0)

## Development

Dependencies:

- docker
- make

Prior to starting any development, make sure the environment is up to date by running `make setup`.
Then run `make serve` to start a Jekyll server and open your browser to
[http://localhost:4567](http://localhost:4567).

The Jekyll server runs in `incremental` mode, which means you can make content changes without
having to restart the server. The docker container that is running Jekyll will mount the current
directory as a volume so there is no need to rebuild it unless you make changes to `Dockerfile`
itself.

To stop the server simply `Ctrl+C` within the terminal window you ran it in. If this is not working,
open a new terminal window, run `make stop`, and wait a few seconds.

## Deploying

To deploy, simply push commits back to `origin`; Github will take care of the rest.
