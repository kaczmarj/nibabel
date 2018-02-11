"""Reading functions for freesurfer files
"""

from .io import read_geometry, read_morph_data, write_morph_data, \
    read_annot, read_label, write_geometry, write_annot, read_aseg_stats, read_aparc_stats
from .mghformat import load, save, MGHImage
