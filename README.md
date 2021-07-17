Example of packaging perl apps as fat rpms.

The example divides application into 3 related rpms:

_custom_perl_ package provides custom perl (you need to package it very rarely)

_deps_ package provides application's dependencies (these change rarely)

_app_ package provides app itself (frequenly under development)

To produce these 3 rpms we use fpm (eFfing Package Manager, https://github.com/jordansissel/fpm )

It is not necessary to split application into several RPMs. We may as well install everything under the same prefix and produce a single .rpm or .deb.
