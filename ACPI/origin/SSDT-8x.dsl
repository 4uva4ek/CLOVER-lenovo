/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160409-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-8x.aml, Mon May 29 09:42:16 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000579 (1401)
 *     Revision         0x02
 *     Checksum         0x53
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20130117 (538116375)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Ist", 0x00003000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.CFGD, FieldUnitObj)
    External (_PR_.CPPC, FieldUnitObj)
    External (_PR_.CPU0, ProcessorObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (PDC0, IntObj)
    External (TCNT, FieldUnitObj)

    Scope (\_PR.CPU0)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_PR.CPPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            If (LAnd (And (CFGD, One), And (PDC0, One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (And (\_SB.OSCP, 0x0400))
            {
                Return (TPSS)
            }
            Else
            {
                Return (LPSS)
            }
        }

        Name (LPSS, Package (0x10)
        {
            Package (0x06)
            {
                0x00000001, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002F7, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000000, 
                0x00000800
            }, 

            Name (TPSS, Package (0x11)
            {
                Package (0x06)
                {
                    0x000008FD, 
                    0x0000AFC8, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00002000, 
                    0x00002000
                }, 

                Package (0x06)
                {
                    0x000008FC, 
                    0x0000AFC8, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001700, 
                    0x00001700
                }, 

                Package (0x06)
                {
                    0x00000898, 
                    0x0000A518, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001600, 
                    0x00001600
                }, 

                Package (0x06)
                {
                    0x00000834, 
                    0x00009C55, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001500, 
                    0x00001500
                }, 

                Package (0x06)
                {
                    0x000007D0, 
                    0x0000920B, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001400, 
                    0x00001400
                }, 

                Package (0x06)
                {
                    0x0000076C, 
                    0x000089A4, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001300, 
                    0x00001300
                }, 

                Package (0x06)
                {
                    0x00000708, 
                    0x00008167, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001200, 
                    0x00001200
                }, 

                Package (0x06)
                {
                    0x000006A4, 
                    0x000077B7, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001100, 
                    0x00001100
                }, 

                Package (0x06)
                {
                    0x00000640, 
                    0x00006FD3, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001000, 
                    0x00001000
                }, 

                Package (0x06)
                {
                    0x000005DC, 
                    0x00006818, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000F00, 
                    0x00000F00
                }, 

                Package (0x06)
                {
                    0x00000578, 
                    0x00005EF1, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000E00, 
                    0x00000E00
                }, 

                Package (0x06)
                {
                    0x00000514, 
                    0x0000578D, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000D00, 
                    0x00000D00
                }, 

                Package (0x06)
                {
                    0x000004B0, 
                    0x00005056, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000C00, 
                    0x00000C00
                }, 

                Package (0x06)
                {
                    0x0000044C, 
                    0x000047BB, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000B00, 
                    0x00000B00
                }, 

                Package (0x06)
                {
                    0x000003E8, 
                    0x000040D3, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000A00, 
                    0x00000A00
                }, 

                Package (0x06)
                {
                    0x00000384, 
                    0x00003A13, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000900, 
                    0x00000900
                }, 

                Package (0x06)
                {
                    0x00000320, 
                    0x00003201, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000800, 
                    0x00000800
                }
            })
        })
        0x00002000
        0x00002000
        Package (0x06)
        {
            0x000008FC, 
            0x0000AFC8, 
            0x0000000A, 
            0x0000000A, 
            0x00001700, 
            0x00001700
        }

        Package (0x06)
        {
            0x00000898, 
            0x0000A518, 
            0x0000000A, 
            0x0000000A, 
            0x00001600, 
            0x00001600
        }

        Package (0x06)
        {
            0x00000834, 
            0x00009C55, 
            0x0000000A, 
            0x0000000A, 
            0x00001500, 
            0x00001500
        }

        Package (0x06)
        {
            0x000007D0, 
            0x0000920B, 
            0x0000000A, 
            0x0000000A, 
            0x00001400, 
            0x00001400
        }

        Package (0x06)
        {
            0x0000076C, 
            0x000089A4, 
            0x0000000A, 
            0x0000000A, 
            0x00001300, 
            0x00001300
        }

        Package (0x06)
        {
            0x00000708, 
            0x00008167, 
            0x0000000A, 
            0x0000000A, 
            0x00001200, 
            0x00001200
        }

        Package (0x06)
        {
            0x000006A4, 
            0x000077B7, 
            0x0000000A, 
            0x0000000A, 
            0x00001100, 
            0x00001100
        }

        Package (0x06)
        {
            0x00000640, 
            0x00006FD3, 
            0x0000000A, 
            0x0000000A, 
            0x00001000, 
            0x00001000
        }

        Package (0x06)
        {
            0x000005DC, 
            0x00006818, 
            0x0000000A, 
            0x0000000A, 
            0x00000F00, 
            0x00000F00
        }

        Package (0x06)
        {
            0x00000578, 
            0x00005EF1, 
            0x0000000A, 
            0x0000000A, 
            0x00000E00, 
            0x00000E00
        }

        Package (0x06)
        {
            0x00000514, 
            0x0000578D, 
            0x0000000A, 
            0x0000000A, 
            0x00000D00, 
            0x00000D00
        }

        Package (0x06)
        {
            0x000004B0, 
            0x00005056, 
            0x0000000A, 
            0x0000000A, 
            0x00000C00, 
            0x00000C00
        }

        Package (0x06)
        {
            0x0000044C, 
            0x000047BB, 
            0x0000000A, 
            0x0000000A, 
            0x00000B00, 
            0x00000B00
        }

        Package (0x06)
        {
            0x000003E8, 
            0x000040D3, 
            0x0000000A, 
            0x0000000A, 
            0x00000A00, 
            0x00000A00
        }

        Package (0x06)
        {
            0x00000384, 
            0x00003A13, 
            0x0000000A, 
            0x0000000A, 
            0x00000900, 
            0x00000900
        }

        Package (0x06)
        {
            0x00000320, 
            0x00003201, 
            0x0000000A, 
            0x0000000A, 
            0x00000800, 
            0x00000800
        }

        Name (PSDF, Zero)
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (LNot (PSDF))
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
                Store (Ones, PSDF)
            }

            If (And (PDC0, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }

        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }
}

