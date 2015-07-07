How to use?
1. Copy file RITslip.pas to project folder.
2. Add in section uses: "RITslip" and in private: "RITslip : TeRITslip"
Done!

Example:

RITslip.SaveStringReg(HKEY_LOCAL_MACHINE, 'Software\Test32', 'SomeNameString', 'ValueString');
RITslip.ReadStringReg(HKEY_LOCAL_MACHINE, 'Software\Test32', 'SomeNameString';
RITslip.SaveStringIni('c:\plik.ini', 'Section', 'key1', 'SomeValue');
RITslip.ReadStringIniValue('c:\plik.ini', 'Section', 'key1')


(C) 2005
