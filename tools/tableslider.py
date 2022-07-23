import io, re
from utils import FileEx

ref_str = "patch=0,EE,20"

new_address = 0x35C7E8

with io.open("pnach.txt", mode="r") as src:
    exsrc = FileEx(src)
    content = src.read(exsrc.size())

    seglst = [m.start() for m in re.finditer(ref_str, content)]

    seg2patch = [content[:seglst[0]]]
    for i in range(len(seglst)-1):
        seg2patch.append("\n" + ref_str + "%0.6X" % (new_address+(4*i)))
        seg2patch.append(content[seglst[i]+len(ref_str)+6:seglst[i+1]-1])
    seg2patch.append('\n' + content[seglst[len(seglst)-1]:])


    with io.open("slided_pnach.txt", mode="w") as dst:
        dst.write(''.join(seg2patch))