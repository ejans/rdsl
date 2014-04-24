Description
===========

Robot Domain Specific Language

Instructions
============

xml files can be validated with [xmllint] or with the use of the xsd plugin of [eclipse].
See `be.kuleuven.mech.modelling.dsl.rdsl/validate.sh`.

Overview
========

![][RDSL_Layers]

RDSL (DSL1) can be used to describe a sepcific robot completely by it's kinematic chain.
The kinematic chain contains different sub models and resolutions so a great deal of 
flexibility is available.
The modelling language is xml (_metametamodel_) with xsd schema _metamodels_.

License
=======

This software is published under a dual-license: GNU Lesser General Public License LGPL 2.1 and BSD license. The dual-license implies that users of this code may choose which terms they prefer.

Acknowledgment
==============

The research leading to these results has received funding from the
European Community's Seventh Framework Programme under grant
agreement no. FP7-600958 (SHERPA: Smart collaboration between Humans and
ground-aErial Robots for imProving rescuing activities in Alpine
environments)

Task List
=========

[xmllint]: http://xmlsoft.org/xmllint.html
[eclipse]: https://www.eclipse.org/
[RDSL_Layers]: doc/figs/RDSL_Layers.png?raw=true
[xml]: http://en.wikipedia.org/wiki/Xml
