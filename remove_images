#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys


def remove_extension(fname):
    # if there's no '.' rindex raises a exception, rfind returns -1
    index_of_extension_start = fname.rfind(".")
    if index_of_extension_start == -1:
        return fname
    return fname[0:index_of_extension_start]


def main():
    file = sys.argv[1]
    with open(file, "r") as fin, open(remove_extension(file) + "r.md", "w") as fout:
        flines = fin.readlines()

        new_flines = []
        for fline in flines:
            # - ![img_1](./_01._Introduction_-_part_1_imgs/0:01:20_1.png)

            if fline[:4] == "- ![":
                continue
            new_flines += [fline]

        fout.write("".join(new_flines))


if __name__ == "__main__":
    main()
