# packer\_ms\_puppet

* Used to create puppet-provisioned microservices

Clone _packer\_includes_ at level of makefile.

Export vars deliberately not defined in Makefile.

Check all of the sources defined in the Makefile
including git tags etc ... exist.

Amend as required.

Run:

        make clean build

If you are playing around with the puppet stuff that
appears under uploads/puppet, on subsequent runs only run

        make build # don't trash my modifications under puppet dir

## Common Issues

* The puppet stuff depends on a bunch of 3rd party modules.
  
  These may cease to exist at a future date. 

* When building an appsvr (EUROSTAR\_SERVICE\_ROLE), you need to

  specify an APP\_VERSION that actually exists in AWS dev s3 under:

  /enovation/<EUROSTAR_SERVICE_NAME>/artefacts/integration

*TODO: stop using env specific folders for versioned artefacts!*

