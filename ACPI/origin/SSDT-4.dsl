/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160409-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-4.aml, Mon May 29 09:42:16 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002D4 (724)
 *     Revision         0x01
 *     Checksum         0x1A
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "CB-01   ", 0x00000001)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GEXP.GEPS, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.GEXP.SGEP, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (BID_, FieldUnitObj)
    External (EIDF, FieldUnitObj)
    External (MDBG, MethodObj)    // Imported: 1 Arguments

    Scope (\)
    {
        Device (EIAD)
        {
            Name (_HID, EisaId ("INT3399"))  // _HID: Hardware ID
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                ADBG ("EIAD STA")
                If (LEqual (BID, 0x20))
                {
                    Return (0x0F)
                }
                ElseIf (LEqual (EIDF, One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Name (PECE, Zero)
                Name (PECD, Zero)
                Name (DFUE, Zero)
                Name (DFUD, Zero)
                Name (OLDV, Zero)
                Name (PECV, Zero)
                Name (DFUV, Zero)
                If (LEqual (Arg0, ToUUID ("adf03c1f-ee76-4f23-9def-cdae22a36acf")))
                {
                    If (LEqual (One, ToInteger (Arg1)))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_0)
                            If (LEqual (_T_0, Zero))
                            {
                                ADBG ("EIAD F:0")
                                Return (Buffer (One)
                                {
                                     0x0F                                           
                                })
                            }
                            ElseIf (LEqual (_T_0, One))
                            {
                                ADBG ("EIAD F:1")
                                If (LNotEqual (BID, 0x20))
                                {
                                    Store (DerefOf (Index (Arg3, Zero)), PECE)
                                    Store (DerefOf (Index (Arg3, One)), PECD)
                                    Store (\_SB.PCI0.GEXP.GEPS (Zero, 0x0C), OLDV)
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x0C, PECE)
                                    If (LGreater (PECD, Zero))
                                    {
                                        Sleep (PECD)
                                        \_SB.PCI0.GEXP.SGEP (Zero, 0x0C, OLDV)
                                    }
                                }

                                Return (Zero)
                            }
                            ElseIf (LEqual (_T_0, 0x02))
                            {
                                ADBG ("EIAD F:2")
                                Store (DerefOf (Index (Arg3, Zero)), DFUE)
                                Store (DerefOf (Index (Arg3, One)), DFUD)
                                If (LEqual (BID, 0x20))
                                {
                                    Store (\_SB.GGOV (0x02000015), OLDV)
                                    \_SB.SGOV (0x02000015, DFUE)
                                }
                                Else
                                {
                                    Store (\_SB.GGOV (0x02040003), OLDV)
                                    \_SB.SGOV (0x02040003, DFUE)
                                }

                                If (LGreater (DFUD, Zero))
                                {
                                    Sleep (DFUD)
                                    If (LEqual (BID, 0x20))
                                    {
                                        \_SB.SGOV (0x02000015, OLDV)
                                    }
                                    Else
                                    {
                                        \_SB.SGOV (0x02040003, OLDV)
                                    }
                                }

                                Return (Zero)
                            }
                            ElseIf (LEqual (_T_0, 0x03))
                            {
                                ADBG ("EIAD F:3")
                                If (LEqual (BID, 0x20))
                                {
                                    Store (\_SB.GGOV (0x02000015), DFUV)
                                    Store (One, PECV)
                                }
                                Else
                                {
                                    Store (\_SB.GGOV (0x02040003), DFUV)
                                    Store (\_SB.PCI0.GEXP.GEPS (Zero, 0x0C), PECV)
                                }

                                Return (Package (0x02)
                                {
                                    PECV, 
                                    DFUV
                                })
                            }

                            Break
                        }

                        Return (Zero)
                    }

                    Return (Zero)
                }

                Return (Zero)
            }
        }
    }
}

