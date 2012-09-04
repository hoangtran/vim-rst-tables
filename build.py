#!/usr/bin/env python
import os

source_dir = 'src'
output_dir = 'ftplugin'


def build():
    pyf = open(os.path.join(source_dir, 'rst_tables.py'))
    py_src = pyf.read()
    pyf.close()
    vimf = open(os.path.join(source_dir, 'base.vim'))
    vim_src = vimf.read();
    vimf.close()
    combined_src = vim_src.replace('__PYTHON_SOURCE__', py_src)
    if not os.path.exists(output_dir):
        os.mkdir(output_dir)
    output_path = os.path.join(output_dir, 'rst_tables.vim')
    combinedf = open(output_path, mode='w')
    combinedf.write(combined_src)
    combinedf.close()

if __name__ == '__main__':
    build()
