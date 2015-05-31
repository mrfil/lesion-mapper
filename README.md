lesion_mapper - A tool for mappping white matter hyperintensities.

For research purposes only! Please see LICENSE.txt

Nate Wetter <nwetter2@illinois.edu>
Brad Sutton <bsutton@illinois.edu>
Magnetic Resonance Functional Imaging Lab <mrfil.bioen.illinois.edu>
University of Illinois at Urbana-Champaign <illinois.edu>

Use: lesion_mapper -in <FLAIR image> [options]

Required parameters:
  -in <image> : FLAIR input image. Needs to already be skull-stripped.

Options:
  -wmthr <float> : White matter propability threshold for standard space masking.
    Between 0 and 1. Higher numbers increase false negatives.
    Lower numbers increase false positives. Default is 0.7.
    Use -1 to skip this step.
  -midline <int> : Remove lesions that are within <int> millimeters of touching
    the saggital midline plane. Should be greater than or equal to zero.
    If set to zero, lesions crossing the midline will be removed.
    Default is 4. Use -1 to skip this step.
    Will be skipped if -wmthr is skipped.
  -midmax <int>  : Only remove parts of midline lesions that are within
    <int> mm of midline. Should be greater than or equal to -midline.
    Default is 9. Use -1 to skip this constraint and allow all lesions
    contiguous with those selected via -midline to be removed.
  -no2fast : Skip secondary fast step. Results should be more sensitive and
    less specific.
  -v             : Verbose.
  -png           : Generate png image outputs.