Example of packaging perl apps as fat rpms.

The example divides application into 3 related rpms:

_custom_perl_ provides custom perl (you need to package they very rarely)

_deps_ provides application's dependencies

_app_ provides app itself

To produce these 3 rpms we use fpm https://github.com/jordansissel/fpm
