import io, re
from utils import FileEx

old_str = ".text:0"
new_str = "patch=0,EE,2"
extended = ",extended,"

with io.open("ida.txt", mode="r") as src:
    exsrc = FileEx(src)
    content = src.read(exsrc.size())

    seglst = [m.start() for m in re.finditer(old_str, content)]

    seg2patch = [content[:seglst[0]]]

    for i in range(len(seglst)-1):
        seg2patch.append(new_str)
        seg2patch.append(content[seglst[i]+len(old_str):seglst[i+1]])
    
    seg2patch.append(new_str)
    seg2patch.append(content[seglst[len(seglst)-1]+len(old_str):])
    

    seg2patch = ''.join(seg2patch)

    seglst = [m.start() for m in re.finditer(new_str, seg2patch)]

    nonunsed_add = [seg2patch[:seglst[0]]]
    for i in range(len(seglst)-1):
        if seg2patch[seglst[i]+len(new_str)+8] == " ":
            nonunsed_add.append("//")
            nonunsed_add.append(seg2patch[seglst[i]+len(new_str)+8:seglst[i+1]])
        elif seg2patch[seglst[i]+len(new_str)+7] == "\n":
            nonunsed_add.append("//\n")
            nonunsed_add.append(seg2patch[seglst[i]+len(new_str)+8:seglst[i+1]])

        else:
            nonunsed_add.append(seg2patch[seglst[i]:seglst[i+1]])

    if seg2patch[seglst[len(seglst)-1]+len(new_str)+8] == " ":
            nonunsed_add.append("//")
            nonunsed_add.append(seg2patch[seglst[len(seglst)-1]+len(new_str)+8:])
    elif seg2patch[seglst[i]+len(new_str)+7] == "\n":
        nonunsed_add.append("//\n")
        nonunsed_add.append(seg2patch[seglst[len(seglst)-1]+len(new_str)+8:])
    else:
        nonunsed_add.append(seg2patch[seglst[len(seglst)-1]:])

    nonunsed_add.append(seg2patch[seglst[len(seglst)-1]+len(new_str)+8:])

    seg2patch = ''.join(nonunsed_add)

    seglst = [m.start()+20 for m in re.finditer(new_str, seg2patch)]

    lend_cmdlst = [seg2patch[:seglst[0]]]
    for i in range(len(seglst)-1):
        lend_cmdlst.append(extended + seg2patch[seglst[i]+9:seglst[i]+11] + seg2patch[seglst[i]+6:seglst[i]+8] + seg2patch[seglst[i]+3:seglst[i]+5] + seg2patch[seglst[i]:seglst[i]+2])
        lend_cmdlst.append(seg2patch[seglst[i]+11:seglst[i+1]-1])
    lend_cmdlst.append(extended + seg2patch[seglst[len(seglst)-1]+9:seglst[len(seglst)-1]+11] + seg2patch[seglst[len(seglst)-1]+6:seglst[len(seglst)-1]+8] + seg2patch[seglst[len(seglst)-1]+3:seglst[len(seglst)-1]+5] + seg2patch[seglst[len(seglst)-1]:seglst[len(seglst)-1]+2])
    lend_cmdlst.append(seg2patch[seglst[len(seglst)-1]:])

    seg2patch = ''.join(lend_cmdlst)

    seglst = [m.start()+38 for m in re.finditer(new_str, seg2patch)]

    lend_cmdlst = [seg2patch[:seglst[0]]]
    for i in range(len(seglst)-1):
        if seg2patch[seglst[i]] != " ":
            lend_cmdlst.append("\n" + seg2patch[seglst[i]-38:seglst[i]-21])
            lend_cmdlst.append("%0.2X" % (int(seg2patch[seglst[i]-21:seglst[i]-19], 16)+4))
            lend_cmdlst.append(extended + seg2patch[seglst[i]+9:seglst[i]+11] + seg2patch[seglst[i]+6:seglst[i]+8] + seg2patch[seglst[i]+3:seglst[i]+5] + seg2patch[seglst[i]:seglst[i]+2])
            lend_cmdlst.append(seg2patch[seglst[i]+11:seglst[i+1]-1])
        else:
            lend_cmdlst.append(seg2patch[seglst[i]:seglst[i+1]])

    lend_cmdlst.append(seg2patch[seglst[len(seglst)-1]:])

    seg2patch = ''.join(lend_cmdlst)

    seglst = [m.start()+38 for m in re.finditer(new_str, seg2patch)]

    lend_cmdlst = [seg2patch[:seglst[0]]]
    for i in range(len(seglst)-1):
        lend_cmdlst.append("//")
        lend_cmdlst.append(seg2patch[seglst[i]:seglst[i+1]])


    seg2patch = ''.join(lend_cmdlst).replace(" ,ext", ",ext")


    with io.open("pnach.txt", mode="w") as dst:
        dst.write(seg2patch)
