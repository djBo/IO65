# IO/65

IO/65, a modular hardware platform for the 6502 processor.

This project is very much inspired by [RC2014](https://rc2014.co.uk/) and Ben Eater's 6502 YouTube series.

### Table of Contents

   1. [History](#history)
   2. [Design](#design)
      * [Dimensions](#dimensions)
      * [Pinout](#pinout)
      * [Memory Map](#memory-map)
   3. [Boards](#boards)
      * [Backplane](#backplane)
      * [CPU](#cpu)
      * [Decoder](#address-decoder)
      * [Memory](#memory-module)
      * [VIA](#via)
      * [RIOT](#riot)
      * [Work in progress](#work-in-progress)
         - [ACIA](#acia)
         - [Audio](#audio)
         - [Banked Memory #1](#banked-memory-1)
         - [Banked Memory #2](#banked-memory-2)
         - [Buffered Memory](#buffered-memory)
         - [Dual-Port Memory](#dual-port-memory)
         - [Interrupt Controller](#interrupt-controller)
         - [PGA2040 Device](#pga2040-device)
         - [PGA2040 Emulator](#pga2040-emulator)
         - [Spy](#spy)
         - [Tape Interface](#tape-interface)
         - [UART](#uart-from-scratch)
         - [Video](#video-board)
         - [PC/104](#pc104)
      * [SBC](#sbc)
   4. [Footnotes](#footnotes)

### History

In the middle of the 2010's, I saved an Apple II-c from a dumpster. Sadly, without power supply, monitor or even software, there was no possibility of booting it directly.  
After a few searches on the interwebz, I came accross a breadboard circuit, allowing the 6502 in free running mode. So, I carefully removed the NCR 6502 CPU from it's socket, and placed it on a breadboard. I wired everything up, using a 555 as a rudimentary clock and a bunch of led bars on the address and data bus. I was intrigued by the flashy lights.

Then I stuble accross the [6502 primer](http://wilsonminesco.com/6502primer/)...  
It's a disguised Pandora's box! Inside you'll find an endless supply of more boxes, each containing countless more. It's a rabbit hole that never ends. Each box is a tiny bit of knowledge about a given subject you need to understand. The further you go, the more you need to figure out.

And so, starting with limited supplies, I opened the first box. The rest is history.

### Design

The original proof-of-concept board was based around the same use of angled pin headers as on RC2014. However, bent pins were a constant source of problems, not to mention the lack in quantity. Dual row headers were also considered, but this came with it's own connector problem of being very hard to remove and the increased risk of more bent pins. The set dimensions of the 40-pin wide header made the boards clunky. This meant that a simply back plane would quickly fall outside the cheapest 10x10mm manufacturing pricing.

The final design is centered around two specific standards:

 - the [ISO/IEC 7810](https://en.wikipedia.org/wiki/ISO/IEC_7810) standard, specifying the size of credit cards (amongst others) at 85.6mm by 53.98mm or 3+3⁄8" by 2+1⁄8". This was mostly inspired by several 6502 badges and the idea to carry one "in your wallet".
 - the PC/XT [ISA bus](https://en.wikipedia.org/wiki/Industry_Standard_Architecture) connector (a.k.a. [J1](https://nl.mouser.com/ProductDetail/571-6-5530843-5)). This was inspired by the fact that the edge connector width fits nicely in the middle of the card. A nice coincedence, is that the connector itself is pretty much as wide as the board, making them site nice and flush.

#### Dimensions

- Board: 85.6x54 mm
- Top corner radius: 3 mm
- Bottom corner radium: 1 mm
- Edge connector width: 81 mm
- Edge connector height: 300 mil
- Edge connector chamfer: 0,5 mm
- Edge connector bevelled: yes
- Edge connector location: bottom, centered on pin 16/47
- Thumb pocket radius: 13 mm
- Thumb pocket center: 10 mm from the top, 12 mm from the edge
- Work area center: 3,5 mm above card center
- Preferred OSHW logo location: 9,5 mm from the top, 10 mm from the right edge

An optional 2 mm wide cut-out slot on pin 17/48 is taken into account in the designs of the individual boards, forcing the board in a single direction. While the current backplane connects these pins allowing the boards to be rotated, it should be noted that __all boards need to face the same direction__ for the system to operate correctly.

#### Pinout

| Pin (Front) | Function | Pin (Back) | Function |
|----|----|----|----|
| 1 | GND | 32 | A0 |
| 2 | +5V | 33 | A1 |
| 3 | Φ2 | 34 | A2 |
| 4 | R/<span style="text-decoration: overline;">W</span> | 35 | A3 |
| 5 | <span style="text-decoration: overline;">RES</span> | 36 | A4 |
| 6 | RDY | 37 | A5 |
| 7 | <span style="text-decoration: overline;">IRQ</span> | 38 | A6 |
| 8 | <span style="text-decoration: overline;">NMI</span> | 39 | A7 |
| 9 | D0 | 40 | A8 |
| 10 | D1 | 41 | A9 |
| 11 | D2 | 42 | A10 |
| 12 | D3 | 43 | A11 |
| 13 | D4 | 44 | A12 |
| 14 | D5 | 45 | A13 |
| 15 | D6 | 46 | A14 |
| 16 | D7 | 47 | A15 |
| 17 | **NC** | 48 | **NC** |
| 18 | <span style="text-decoration: overline;">OE</span> | 49 | Unused [^1] |
| 19 | <span style="text-decoration: overline;">WE</span> | 50 | Unused |
| 20 | <span style="text-decoration: overline;">CS0</span> | 51 | VIA CB1 |
| 21 | <span style="text-decoration: overline;">CS1</span> | 52 | VIA CB2 |
| 22 | <span style="text-decoration: overline;">CS2</span> | 53 | VIA PB0 / RIOT PA0 |
| 23 | <span style="text-decoration: overline;">CS3</span> | 54 | VIA PB1 / RIOT PA1 |
| 24 | <span style="text-decoration: overline;">CS4</span> | 55 | VIA PB2 / RIOT PA2 |
| 25 | <span style="text-decoration: overline;">CS5</span> | 56 | VIA PB3 / RIOT PA3 |
| 26 | <span style="text-decoration: overline;">CS6</span> | 57 | VIA PB4 / RIOT PA4 |
| 27 | <span style="text-decoration: overline;">CS7</span> | 58 | VIA PB5 / RIOT PA5 |
| 28 | <span style="text-decoration: overline;">CS8</span> | 59 | VIA PB6 / RIOT PA6 |
| 29 | <span style="text-decoration: overline;">CS9</span> | 50 | VIA PB7 / RIOT PA7 |
| 30 | <span style="text-decoration: overline;">CS10</span> | 61 | +5V |
| 31 | <span style="text-decoration: overline;">CS11</span> | 62 | GND |

[^1]: For the two unused pins there are two possible options: serial Rx/Tx lines connected to the USB header on the back plane, or I^2^C.

#### Memory Map

Using the 6502 primer as guidance, the following design should be easy to implement and extend:

| Range | Description |
|---|---|
| 0x000-0x7FFF | 32K RAM |
| 0x8000-0x9FFF | 8K expansion (<span style="text-decoration: overline;">CS0</span>) |
| 0xA000-0xBFFF | 8K expansion (<span style="text-decoration: overline;">CS1</span>) |
| 0xC000-0xDFFF | 8K expansion (<span style="text-decoration: overline;">CS2</span>) |
| 0xE000-0xFFFF | 8K ROM (<span style="text-decoration: overline;">CS3</span>) |

### Boards

#### Backplane

The current iteration of the backplane crudely ties all lines of 8 slots (600 mil apart) together, exposing power pins through a two-pin header and optionally a MicroUSB connector, with data lines on another two-pin header. While it can certainly be used for initial design verification, it clearly needs a few upgrades like real power delivery and status leds.

#### CPU

The CPU board contains the 6502, 1MHz crystal, and a debounced button for the reset circuit. It can be configured to be used with either older or newer CPU's, reconfiguring the pins for BE and <span style="text-decoration: overline;">VP</span>. It exposes the oscillator output, Φ0 input, and the SYNC/<span style="text-decoration: overline;">SO</span>/<span style="text-decoration: overline;">VP</span>/BE signals to a 6-pin header. They can be used to provide external clocks or single-cycle/single-instruction stepping capabilities.

Under normal use, a jumper should connect the oscillator output and Φ0 input together.

#### Address Decoder

The address decoder is responsible for providing a usuable memory map, and providing signals for <span style="text-decoration: overline;">OE</span>, <span style="text-decoration: overline;">WE</span> and <span style="text-decoration: overline;">CS0</span> to <span style="text-decoration: overline;">CS11</span>.

<span style="text-decoration: overline;">OE</span> and <span style="text-decoration: overline;">WE</span> are generated by using R/<span style="text-decoration: overline;">W</span> and Φ2. <span style="text-decoration: overline;">CS0</span> to <span style="text-decoration: overline;">CS3</span> are directly mapped to the first stage decoder, giving each section 8k (see the [memory map](#memory-map) above).

The second stage decoder breaks the 0xC000-0xDFFF range down into 8 sections of 1k. These are exposed on a separate 8-pin header.  
The third stage decoder breaks down two configurable regions into 4 sections of 256 bytes. These two ranges are tied into <span style="text-decoration: overline;">CS4</span> to <span style="text-decoration: overline;">CS11</span>:

| Region | 3 | ∆ |
|---|---|---|
| 1 | 0xC000-0xC3FF | 0xD800-0xDBFF |
| 2 | 0xD000-0xD3FF | 0xDC00-oxDFFF |

#### Memory Module

The memory module is a configurable 8k or 32k single chip (DIP28) design, allowing it to be placed in either the RAM range or any of the 8k ranges. An optional 2-pin dip-switch or header can be soldered to accommodate 32k EEPROMS with manual banking.

#### VIA

The Versatile Interface Adapter (a.k.a. 6522) provides 2 16-bit programmable timers and two 8-bit ports with two control lines each. It exposes PORTA and control lines on a 10-pin header and PORTB and control lines on the rear of the edge connector. PORTB was chosen as it is connected to the onboard shift register, allowing extended capabilities in combination with other board circuits.

#### RIOT

The RAM, IO and Timer (a.k.a. 6532) provides 128 bytes of general purpose RAM, programmable interval timer and two 8-bit IO ports. It exposes PORTB on an 8-pin header and PORTA on the rear of the edge connector. While PORTB can drive more current (and thus more suited for driving external circuitry), PORTA has an additional edge-detect capability on PA7.

#### Work in progress

The following boards are very much *in development*:

##### ACIA

The Asynchronous Communications Interface Adapter (a.k.a. 6551) provides serial communication. It is intended to be used with a Serial-to-USB device.

##### Audio

The audio board consists of two [SN76489](https://en.wikipedia.org/wiki/Texas_Instruments_SN76489)'s for stereo 3 channel PSG and 1 channel noise.

##### Banked Memory #1

This board banks 2 MB of RAM in 256 8k blocks. This is specifically meant for <span style="text-decoration: overline;">CS1</span> or <span style="text-decoration: overline;">CS2</span>.

##### Banked Memory #2

This board banks 8 MB in 256 32k blocks. This is specifically meant to occupy the RAM region.

##### Buffered Memory

This board contains 2 8k RAM chips. All control lines are attached in a cross fashion to both the edge connector and a 22-pin header for external circuitry. While one chip is connected to the edge, the other is connected to the header. Ths can be swicthed using a single 1-bit register. This is specifically meant for the <span style="text-decoration: overline;">CS2</span> region in conjuncion with the below mentioned video output card.

##### Dual-Port Memory

This board contains a single dual-port 8k SRAM ic. One side is connected to the edge connector (read/write), while the other is exposed on a 22-pin header for external circuitry. This is specifically meant for the <span style="text-decoration: overline;">CS2</span> region in conjuncion with the below mentioned video output card.

##### Interrupt Controller

This board is from Paul Fellingham's [design](http://6502.org/mini-projects/priority-interrupt-encoder/priority-interrupt-encoder.html), and provides 8 prioritized interrupt inputs on a header.  
Future designs of interrupt capable boards will introduce additional configuration options and IRQ line exposure using a single pin header (similar to how CS is done).

##### PGA2040 Device

This board contains a [PGA2040](https://shop.pimoroni.com/products/pga2040) with 10 pins connected through voltage converters to CS, R/W and data bus signals. This board is meant to be utilized as an addressable device.

##### PGA2040 Emulator

This board contains a [PGA2040](https://shop.pimoroni.com/products/pga2040) utilizing all 30 available pins to the edge connector. This board is meant as a CPU replacement, and act as a full-scale 6502 emulator.

##### Spy

The Spy board contains all the required circuitry to implement adjustable clocks, single-cycle/single-instruction stepping and a hexadecimal display of the address/data bus values using TIL311's. This board is explicitly meant to be used in conjunction with a new 65C02 CPU with the BE and <span style="text-decoration: overline;">VP</span> pins. **Do not use with NMOS 6502's!**

##### Tape Interface

This board implements a Kansas City Standard tape decoder interface. See [this project](https://www.gregorystrike.com/2023/01/07/kansas-city-standard-decoder/) and this [Hackaday topic](https://hackaday.com/2022/10/11/a-cassette-interface-for-a-6502-breadboard-computer-kansas-city-style/) for more information.

##### UART from scratch

The board is based on James Sharman's amazing youtube series [UART from scratch](https://www.youtube.com/watch?v=aE5VTp_eMN4&list=PLFhc0MFC8MiCs8W5H0qZlC6QNbpAAe_O-&pp=iAQB).

##### Video Board

This board contains a [MC6847](https://en.wikipedia.org/wiki/Motorola_6847) VDG with a MC1372 modulator, and can be used to output a video signal. It is meant to be used together with the above mentioned Buffered Memory or Dual-Port Memory boards. All designs come straight from [@pmig96](https://twitter.com/pmig96)'s series of articles on the subject:

* [MC6874 Test Circuit #1](https://pmig96.wordpress.com/2020/07/15/mc6847-test-circuit/)
* [MC6874 Test Circuit #2](https://pmig96.wordpress.com/2020/07/16/mc6847-test-circuit-part-2/)
* [MC6874 Test Circuit #3](https://pmig96.wordpress.com/2020/07/24/mc6847-test-circuit-part-3/)
* [MC6874 Test Circuit #4](https://pmig96.wordpress.com/2020/07/27/mc6847-test-circuit-part-4/)
* [MC6874 Test Circuit #5](https://pmig96.wordpress.com/2022/04/01/mc6847-test-circuit-part-5/)
* [MC6874 Test Circuit #6](https://pmig96.wordpress.com/2022/04/05/mc6847-test-circuit-part-6/)
* [MC6874 Test Circuit #7](https://pmig96.wordpress.com/2022/04/07/mc6847-test-circuit-part-7/)
* [MC6874 Test Circuit #8](https://pmig96.wordpress.com/2022/08/22/mc6847-test-circuit-part-8/)
* [MC6874 Dual-Port RAM](https://pmig96.wordpress.com/2020/08/20/a-dual-ported-ram-for-the-mc6847/)

Sadly, there is not much info out there regarding this chip. Worst of all, mine *seems* to be misbehaving, as I am not able to reproduce the nice black-and-white image from part 1 (it's all wavy side to side).

##### PC/104

This board is mostly a proof-of-concept, trying to adapt the 6502 platform to the the PC/104 form-factor. While not all signals can be re-created, most of them can be provided.

#### SBC

This board is designed to combined several cards into a single-board-computer and uses only SMD components. It's meant to be a badge, capable of running from a single 18550 battery. This is the culmination of months of designing all the other boards, and making a version that has everything already integrated. By utilizing the tiniest of chips, the board is capable of housing a fairly involved set of capabilities.

**Features:**

* QFN-44 packaged WDC 65C02 CPU
* QFN-44 packaged WDC 65C22 VIA
* 1MHz Clock
* 32Kb SRAM
* 8Kb FRAM
* configurable decoder logic
* single-cycle/single-instruction stepping
* blinkin' leds everywhere
* powered by USB or 18650 battery with seemless switching
* battery charging with USB or solar
* firmware upgrading through USB

**Design considerations:**  
Almost none of these parts can be hand-soldered, so stencils for both sides are required. Note the use of 0402 sized resistors, capacitors and leds. The board complexity also requires at least 4 layers, with real layer-to-layer via's.

For power delivery, a simple integrated ic would be nice. However, a single ic incorporating USB/Solar charging, buck-boost conversion, seemless switching and interrupt capability might prove hard to find. Any suggestions are welcome.

Firmware upgrading is an entire new can-o-worms. Some FTDI chips seem to be capable of doing the job, but custom host-based software will probably be required. It will need to connect to the BE signal (and possibly RST/RDY too) in order to take full bus-control. Another contention issue is the size and pricing of FRAM: 32K is about $ 14 each, while 8k is about half.

While the WDC 65C51N is available is a nice QFP-32 package, it suffers from the transmit data register bug and was omitted in the initial design. Also, Mouser only has the DIP & PLCC versions.

LED control could possibly be accomplished with the VIA PORTB's shift-register feature. This would mean swapping the ports around from the original board and needs some serious reconsideration before going down that route.  
The core mechanic is to provide generic control using PORTA, optionally extending it to hardware based RGB control.

Memory could possibly be increased by adding one or two cheap 8k SRAM ic's. 

**BoM**:

| Nr | Description | Part Nr. | Power | Price |
|---|---|---|---|---|
| 1 | WDC 65C02 | [W65C02S6TQG-14](https://nl.mouser.com/ProductDetail/955-W65C02S6TQG-14) | 150uA@1MHz | € 9,88 |
| 1 | WDC 65C02 | [W65C22S6TQG-14](https://nl.mouser.com/ProductDetail/955-W65C22S6TQG-14) || € 10,21 |
| 1 | FRAM 8Kb | [FM16W08-SG](https://nl.mouser.com/ProductDetail/877-FM16W08-SG) || € 6,50 |
| 1 | SRAM 32Kb | [AS7C256A-10TCN](https://nl.mouser.com/ProductDetail/913-AS7C256A-10TCN) || € 2,30 |
| 1 | 1MHz Oscillator | [LFSPXO058610Reel](https://nl.mouser.com/ProductDetail/449-LFSPXO058610REEL) or [CB3-3C-1M000000](https://nl.mouser.com/ProductDetail/774-CB3-3C-1M000000) || € 1,36 / 1,59 |
| 1 | Battery Management IC | [MAX8903](https://nl.mouser.com/ProductDetail/700-MAX8903DETI+) || € 7,06 |
| 8 | Green LED 0402 | Data Bus || ... |
| 16 | Red LED 0402 | Address Bus || ... |
| 8 | White, Blue or RGB LED 0402 | VIA PORT A || ... |
| 2 | Inverter | [SN74AHCT1G04DBVR](595-SN74AHCT1G04DBVR) SOT-23-5 || € 0,348 |
| 2 | Dual 2-to-4 line decoder | [SN74HCT139DE4](https://nl.mouser.com/ProductDetail/595-SN74HCT139DE4) || € 1,21 |
| 1 | 3-to-8 line decoder | [MC74HCT138ADG](https://nl.mouser.com/ProductDetail/863-MC74HCT138ADG) || €  |
| 1 | USB-to-Parallel | [FT245RL](https://nl.mouser.com/ProductDetail/895-FT245RL) (SSOP-28) or [FT245RQ](https://nl.mouser.com/ProductDetail/895-FT245RQ-TRAY) (QFN-32) || € 4,51 |
| 1 | SRAM 2Mb | [CY62167GN-45ZXI](https://nl.mouser.com/ProductDetail/727-CY62167GN-45ZXI) || € 13,24 |

To be considered:
| Nr | Description | Part Nr. | Price |
|---|---|---|---|
| 1 | 18650 Battery Clip | [12BHC186P1-GR](https://nl.mouser.com/ProductDetail/12BHC186P1-GR) | € 3,30 |
| 1 | Solar Battery Charger IC | [SPV1040T](https://nl.mouser.com/ProductDetail/511-SPV1040T) | € 4,19 |
| 1 | 3.3V Voltage Reference | [MCP1501T-33E/CHY](https://nl.mouser.com/ProductDetail/579-MCP1501T-33E/CHY) | € 0.94 |
| 1 | 3.3V Voltage Reference | [MAX6070BAUT33+T](https://nl.mouser.com/ProductDetail/700-MAX6070BAUT33T) | € 2.61 |
| 1 | 3.3V Voltage Reference | [ADR3533WARMZ-R7](https://nl.mouser.com/ProductDetail/584-ADR3533WARMZ-R7) | € 3.72 |
| 1 | 3.3V Voltage Reference | [ADR4533ARZ](https://nl.mouser.com/ProductDetail/584-ADR4533ARZ) | € 7.36 |
| 8 | Tri-Color LED | [APGF1012GBRC-07](https://nl.mouser.com/ProductDetail/604-APGF1012GBRC-07) | € 0,987 |
| 8 | RGB LED | [LRTBR48G-P9Q7-1+R7S5-26+NP-68](https://nl.mouser.com/ProductDetail/720-LRTBR48GP9A3521) | € 0,385 |
| 1 | USB Type-C Connector | | € 0,63 + |
| 1 | Parallel I^2^C Controller | [PCF8584T/2,512](https://nl.mouser.com/ProductDetail/771-PCF8584T2512) | € 6,58 |

### Footnotes
