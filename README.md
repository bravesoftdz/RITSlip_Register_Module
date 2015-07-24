## How to use
*Created in 2005*

* Copy file `RITslip.pas` to project folder.
* Add in section `uses : "RITslip"` and in `private : "RITslip : TeRITslip"`
**Done!**

Example:
```Pascal
    RITslip.SaveStringReg(HKEY_LOCAL_MACHINE, 'Software\Test32', 'SomeNameString', 'ValueString');

    RITslip.ReadStringReg(HKEY_LOCAL_MACHINE, 'Software\Test32', 'SomeNameString';

    RITslip.SaveStringIni('c:\plik.ini', 'Section', 'key1', 'SomeValue');

    RITslip.ReadStringIniValue('c:\plik.ini', 'Section', 'key1')
```