<h1 align="center">PS2 CLEO Opcode Extender</h1>

<p align="center">
 An extremely simplified opcode extender for the PlayStation 2™ version of GTA San Andreas.
</p>

<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About the project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#coding">Coding</a>
      <ul>
        <li><a href="#setup">Setup</a></li>
        <li><a href="#opcodes">Opcodes</a></li>
      </ul>
    </li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#thanks">Thanks</a></li>
  </ol>
</details>

## About the project

This is a project that seeks a primitive implementation of what was CLEO 1/2, for the PS2 platform. It brings opcodes present in CLEO 1/2/3/4 from a priority list, so it's not a full version of any of them. There are also objective differences with the current CLEO version: I have no interest in implementing an external scripting system (.cs) in the short term, this means that mods should be coded in main.scm/script.img for now, and nor is it being produced by any original CLEO author.

### Built with
* MIPS Assembly Instruction Set for the PlayStation 2™
* PNACH Patch System
* IDA 7.5

## Coding

In this section you will have some information about how to code using this project, from setup guide to the new opcode implement.

### Setup

Using Enceladus you only need one way to code and one way to test your code, that is, if you want, you can even create your code on PS2, but I'll leave some recommendations below.

[Sanny Builder](https://sannybuilder.com/downloads.html)(With our custom data) and [PCSX2](https://pcsx2.net/download/development/dev-windows.html) or OPL on a real console.

Get ISO US v1.03 somewhere(as it is the only version compatible with the project), enable cheats on PCSX2, rename project file from cleo.s to CRC32 of your game + .pnach(Note: The code of a vanilla ISO is 399A49CA, so it would be 399A49CA.pnach) and throw it in the cheats folder of your emulator. To inject directly into the ISO, split the patch into 5 or 6 files (as it is too big to process) and install to the ISO using PS2 Patch Engine. Once that's done, you can start coding in main.scm.

Oh, and I also have to mention that an essential prerequisite for using CLEO is knowing how to code in Sanny Builder.  

## Opcodes  
* 003d:  0@ = read_memory 0x60464C
* 003e:  write_memory 0x60464C 32
* 003F:  call_function 0x59E480 arg_num 1 ret 0 args #BANDITO  
P.S.1: It has in-built return, just changed by a flag returning on the var in the last argument  
P.S.2: Argument order is the same as C calling, (Original CLEO is inverted)  

* 0040: call_method 0x21A920 struct 0x6FE530 arg_num 1 ret 0 args 0 //CCamera::Fade(short)  
P.S.: Call method works just like call function, with a return flag  

* 0047:  1@ = ped 0@ struct
* 0048:  1@ = vehicle 0@ struct
* 0049:  1@ = object 0@ struct
* 004A:  0@ = get_this_script_struct
* 004B:  1@ = var 0@ pointer

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AwesomeFeature`)
3. Commit your Changes (`git commit -m 'Add some AwesomeFeature'`)
4. Push to the Branch (`git push origin feature/AwesomeFeature`)
5. Open a Pull Request

## License

Distributed under GNU GPL-3.0 License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

Daniel Santos - [@danadsees](https://twitter.com/danadsees) - danielsantos346@gmail.com

Project Link: [PS2 CLEO](https://github.com/DanielSant0s/PS2-CLEO)

## Thanks

Here are some direct and indirect thanks to the people who made the project viable!

* All CLEO project and plugins contributors(specially Seemann and Junior_Djjr)
* aap - Assembly tips XD

