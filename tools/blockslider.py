import io, re
from utils import FileEx

ref_str = "extended,00"

old_address = 0x35C830
new_address = 0x35CDB0

with io.open("pnach.txt", mode="r") as src:
    exsrc = FileEx(src)
    content = src.read(exsrc.size())

    seglst = [m.start() for m in re.finditer(ref_str, content)]

    seg2patch = [content[:seglst[0]]]
    for i in range(len(seglst)-1):
        seg2patch.append(ref_str + "%0.6X" % ((int(content[seglst[i]+len(ref_str):seglst[i]+len(ref_str)+6], 16)-old_address)+new_address))
        seg2patch.append(content[seglst[i]+len(ref_str)+6:seglst[i+1]])

    seg2patch.append(ref_str + "%0.6X" % ((int(content[seglst[len(seglst)-1]+len(ref_str):seglst[len(seglst)-1]+len(ref_str)+6], 16)-old_address)+new_address))
    seg2patch.append(content[seglst[len(seglst)-1]+len(ref_str)+6:])

    with io.open("slided_table_pnach.txt", mode="w") as dst:
        dst.write(''.join(seg2patch))