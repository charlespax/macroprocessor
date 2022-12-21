# macroprocessor
A project to create a microprocessor optimized for human visual verification

# Introduction
A user should be able to trust the output of a computational device without having to trust
the computatoinal device itself.

# Application
## Cryptographic security
Bitcoin

# Design
The design is not optimized for price, area, power, efficiency, yield, or other 
traditional parameter. The design is optimized for human readability and understanding.

## Requirements
- MUST be visible to a human with minimal optical magnification
- An integrated circuit design layout SHOULD aid understanding
- IC layout SHOULD correspond to the layout as seen in a digitial simulation
- Microprocessor design architecture SHOULD be optimized for understanding
- The registers or other circuitry MAY emit light
- MAY have features to aid cryptography
- MAY have serial output for debugging or other purposes

## Design notes
The overall chip layout and data flow SHOULD run from left to right.

Logical elements SHOULD have inputs on the left and outputs on the right

The metal layer or other features MUST NOT obscure any features such that 
the circuit can not be verified visually.

Chip packaging MUST NOT obscure the electrical path from the IC to the
package pins.

The design MAY use multiple IC components if each component meets the
requirements of this document.

The design MAY include wire-bonded components

# Notes
- RISC-V RV32I or RV32E are candidates
- Research making a Forth-native processor
- Can the macroprocessor be made using the same process as LEDs?
- Can a wafer be put through a secondary LED process to create registers that
  emit light?
- What is the current state of light-emitting transistors (LETs)?
- Can I use diode logic and use LEDs?
- I believe the normal silicon process cannot be used to create features that
  emit light because the band gap of silicon is too greaet. True?
- RISC-V would be a great choice if it can be visually verified. This has the 
  advantage that many more eyes would be on the chip. However, I think it is
  more important to make choices that result in more users in verifying their
  own devices.
- Check out https://zeroToASICCourse.com - this is a course for designing and ordering
  your own chip designs.
- Check out https://developers.google.com/silicon - Google's wafer batching
  program for open source designs. Cool, but I am happy to pay if reasonable.
- MAY take an external diode-based ROM
- Is there anything about this processor that would make it bad at cryptographic
  functions? Minimal circuitry could be included to address issues.
- Can x-ray crystalography be used to verify the surface of an IC?
- https://www.skywatertechnology.com is a US-based silicon fab. 
- What happens to the equipment from old semiconductor fabrication technologies?
- Fab technologies: https://en.wikipedia.org/wiki/Semiconductor\_device\_fabrication
- Are there fabs that use old technologies for new chips?
- Wire bonding can be used in places where the metal layer would obscure layers below
- wire bonding can be used as jumpers that can be cut to permanently disable a ffeature
- Rather than wire bonding, the connections can be routed to the outside of the package,
  so they can be explicetly enabled
- Maybe multi gate transistors can be used on such large features if one large gate is
  not appropriate
- Make the binary instruction decoding physicallyl easy to see on the die. Put them
  in the same order you would find them in a specification table
- Is silicon transparent to any frequency of light? If so, maybe  this can be
  used for verification and would be a design consideration.

# Conventions
The keywords below are to be interpreted as described in BCP14 [RFC2119] [RFC8174].
- MUST
- MUST NOT
- REQUIRED
- SHOULD
- SHOULD NOT
- RECOMMENDED
- NOT RECOMMENDED
- MAY
- OPTIONAL
