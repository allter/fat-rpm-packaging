Example of packaging perl apps as fat rpms.

The example divides application into 3 related rpms:

_custom_perl_ provides custom perl (you need to package they very rarely)

_deps_ provides application's dependencies

_app_ provides app itself

To produce these 3 rpms we use fpm https://github.com/jordansissel/fpm

It is not necessary to split application into several RPMs. We may as well install everything under the same prefix and produce a single .rpm or .deb.
