#!/bin/bash
# vim: et sr sw=4 ts=4 smartindent:
#
# Test a packer_product_*
# does as expected.
mkdir -p /etc/eurostar
tree -C /tmp/uploads >/etc/eurostar/tmp_uploads.lst
tree -C /tmp/scripts >/etc/eurostar/tmp_scripts.lst
