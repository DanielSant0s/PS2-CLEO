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

Oh, and I also have to mention that an essential prerequisite for using CLEO is knowing how to code in Sanny Builder.  

Yes, this shit works, I rewrote the entire CRunningScript::Process function to work similarly to the PC version of the game and in addition to make the game's scripting system a little lighter and support new opcodes, I programmed the project almost all in C++ (some parts in Assembly) and I made a tremendous scheme to turn this into 5 patches (I had to divide it into 5 because only one broke the size limits of all PS2 patch programs, so to apply by yourself, you will have to make 5 patches xD But no, don't despair, it includes a SLUS_209.46 (executable from the game) with CLEO pre-installed.

It also includes a sb_data.7z for Sanny Builder, to be able to code using the program, to be able to use it, just extract the files in the Sanny Builder folder (in its latest version, of course), then change the mode in the lower right corner of the window to "GTA SA PS2 v1.0" and finally select the installation of the PC version of the game in the options menu (yes, the PC version, remember to have it installed). Finally I also included an .iso image with a test kit that I used to develop the project and also a clean main.scm source with just some example opcodes.

<h1 align="center"><a href="https://drive.google.com/drive/u/0/folders/1HZePaZbU82iLNJPZr00fQNFUbNE4WRHk">DOWNLOAD</a></h1>

## Opcodes  
* 0A8C: write_memory 0xC0BC15 size 1 value 1 virtual_protect 0
* 0A8D: $result = read_memory 1@ size 4 virtual_protect 0
* 0A8E: 4@ = 5@ + 6@ // int
* 0A8F: $var = 0@(1@,2i) - 1 // int
* 0A90: $var(0@,10i) = 100 * 1@ // int
* 0A91: $div = 1 / 5 // int
* 0A96: $ActorStruct = ped $PLAYER_ACTOR struct
* 0A97: $CarStruct = vehicle $MyCar struct
* 0A98: $ObjectStruct = object 0@ struct
* 0A9A: $hFILE = open_file "settings.ini" mode 0x72  // IF and SET
* 0A9B: close_file $hFILE
* 0A9C: 0@ = file $hFILE size //DON'T USE
* 0A9D: read_file $hFILE size 2 to $150
* 0A9F: 0@ = get_this_script_struct
* 0AA0: gosub_if_false @CREATE_NEW_ACTOR
* 0AA1: return_if_false
* 0AA5: call_function $hPROC num_params 1 pop 1 $param
* 0AA6: call_method $Destroy struct $CarStruct num_params 0 pop 0
* 0AA7: call_function_return 0x569660 num_params 2 pop 2 $COORD_Y $COORD_X $GROUND
* 0AA8: call_method_return 0x4048E0 struct 0xB74494 num_params 1 pop 0 $MyCar 0@
* 0AC6: 0@ = label @label pointer
* 0AC7: 0@ = var 0@ pointer
* 0AC8: 0@ = allocate_memory_size 260
* 0AC9: free_allocated_memory 0@
* 0ACA: show_text_box 0@v
* 0ACB: show_styled_text 0@v time 1000 style 1
* 0ACC: show_text_lowpriority 0x969110 time 100
* 0ACD: show_text_highpriority 0x969110 time 100
* 0ACE: show_formatted_text_box "This is %.4X opcode" 0x0ACE
* 0ACF: show_formatted_styled_text "This is %.4X opcode" time 2000 style 1 0x0ACF
* 0AD0: show_formatted_text_lowpriority "This is %.4X opcode" time 2000 0x0AD0
* 0AD1: show_formatted_text_highpriority "This is %.4X opcode" time 2000 0x0AD1
* 0AD3: 0@v = string_format "%d + %d = %d" 2 2 4
* 0AD5: file $hFile seek 0x10 from_origin 1 //IF and SET
* 0ADE: 0@ = text_label_string 0@v
* 0AEA: $actor = ped_struct $ped_struct handle
* 0AEB: $car = vehicle_struct $vehicle_struct handle
* 0AEC: $object = object_struct $object_struct handle

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AwesomeFeature`)
3. Commit your Changes (`git commit -m 'Add some AwesomeFeature'`)
4. Push to the Branch (`git push origin feature/AwesomeFeature`)
5. Open a Pull Request

## License

Distributed under MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

Daniel Santos - [@danadsees](https://twitter.com/danadsees) - danielsantos346@gmail.com

Project Link: [PS2 CLEO](https://github.com/DanielSant0s/PS2-CLEO)

## Thanks

Here are some direct and indirect thanks to the people who made the project viable!

* All CLEO project and plugins contributors(specially Seemann and Junior_Djjr)
* aap - Assembly tips XD

