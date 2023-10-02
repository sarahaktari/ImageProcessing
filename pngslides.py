#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jun  8 11:39:43 2023

@author: student
"""


import os
import matplotlib.pyplot as plt
import numpy as np
from glob import glob

# path
image_dir = "/Users/student/Desktop/amy/838/M838 ChAT rostral/"
os.chdir(image_dir)
# use last bit to modify selected images 
image_paths = sorted(glob(os.path.join(image_dir,'*.png'))) [-25:]
#
# dimesions
grid_rows = 5
grid_cols = 5

# figure and subplots
fig, axes = plt.subplots(grid_rows, grid_cols, figsize=(80, 80))

# interate through path
for i, ax in enumerate(axes.flat):
    if i < len(image_paths):
        image = plt.imread(image_paths[i])
        ax.imshow(image)
        ax.axis('off')
        file_name = os.path.basename(image_paths[i])
        ax.set_title(file_name, fontsize=40, pad=2)
plt.savefig("/Users/student/Desktop/amy/838/M838 ChAT rostral/M838rostrallast.pdf")

# spacing
plt.tight_layout()

# show 
plt.show()




















