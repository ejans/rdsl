#!/bin/bash

xmlcheck() {
xmllint --noout --schema *.xsd *.xml
}

xmlcheck

cd SubModels/Chain_Geometry
xmlcheck

cd ../Chain_Topology
xmlcheck

cd ../GeometricSemantics
xmlcheck

cd ../HierarchicalHypergraphs
xmlcheck

cd ../..
