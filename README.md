# DiscoTope2ChimeraAttr
A bash script which converts DiscoTope result into UCSF Chimera Attributes

## Description
### System Requirement
Unix-like OS environment is preferred. For Windows OS users, Ubuntu virtual machine or Cygwin can be used (**only tested on Ubuntu**).

### DiscoTope2ChimeraAttr
Converts DiscoTope v2.0 output file (suffix=".txt") into Chimera Attributes (suffix=".txt", name of attribute: "CustomAttribute").

#### DiscoTope v2.0
DiscoTope v2.0 is a discontinuous B-cell Epitope Prediction tool from protein 3D structures (Input: PDB structure files for macromolecules). 
Associated scientific publication: https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1002829 <br />
Online tool accessible from web server: https://services.healthtech.dtu.dk/service.php?DiscoTope-2.0.

#### UCSF Chimera
UCSF Chimera is a freely-available interactive 3D structure visualization tool (similar to PyMol). The [Define Attributes (defattr)](https://www.cgl.ucsf.edu/chimera/docs/ContributedSoftware/defineattrib/defineattrib.html) properties of UCSF Chimera appends a value (attribute) for each item (e.g. amino acid residues) in Chimera. By appending attributes, one can color the amino acid residues based on a color scale (E.g. Red to White to Blue).

## Implementation
1. Go to the directory containing DiscoTope2ChimeraAttr.bash
1. Enter "bash DiscoTope2ChimeraAttr.bash" in command line
1. Enter the directory containing DiscoTope result outputs (**make sure nothing other than DiscoTope outputs .txt is present in the selected folder**)
1. Find resulting attribute files in the same folder as DiscoTope outputs ("\_Appended" is added at the end of the results' filename)
1. Go to UCSF Chimera
1. Enter "defattr /*location of your attribute file*"
1. Select color scale and Apply

### Acknowledgement
Acknowledge or cite if this tool is useful for your research. <br />
**Citation (Vancouver):** Tan YC. DiscoTope2ChimeraAttr_v1.0.0 [Internet]. Malaysia: Zenodo; 2021 [updated 2021, cited 2021 Jan 01]. Available from: https://github.com/TanYongChiang/DiscoTope2ChimeraAttr/tree/v1.0.0. <br />
**DOI:** 10.5281/zenodo.4408680
