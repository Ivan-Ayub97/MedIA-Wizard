[Setup]
; Basic installation configuration
AppName=MedIA-Wizard
AppVersion=1.0
DefaultDirName={pf}\MedIA-Wizard
DefaultGroupName=MedIA-Wizard
OutputDir=.\Output
OutputBaseFilename=MedIA-Wizard_Installer
SetupIconFile=C:\Users\negro\Desktop\MedIA-Wizard-main\MedIA-Wizard-main\logo.ico
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin

[Files]
; Files to include in the installation
Source: "dist\MedIA-Wizard.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\negro\Desktop\MedIA-Wizard-main\MedIA-Wizard-main\logo.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\negro\Desktop\MedIA-Wizard-main\MedIA-Wizard-main\AI-onnx"; DestDir: "{app}\AI-onnx"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\negro\Desktop\MedIA-Wizard-main\MedIA-Wizard-main\Assets"; DestDir: "{app}\Assets"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
; Create shortcuts in the menu group and on the desktop
Name: "{group}\MedIA-Wizard"; Filename: "{app}\MedIA-Wizard.exe"; IconFilename: "{app}\logo.ico"; WorkingDir: "{app}"
Name: "{commondesktop}\MedIA-Wizard"; Filename: "{app}\MedIA-Wizard.exe"; IconFilename: "{app}\logo.ico"; WorkingDir: "{app}"

[Registry]
; Associate MedIA-Wizard with .mp4 files
Root: HKCU; Subkey: "Software\Classes\.mp4"; ValueType: string; ValueData: "MedIAWizard.File"
Root: HKCU; Subkey: "Software\Classes\MedIAWizard.File\shell\open\command"; ValueType: string; ValueData: """{app}\MedIA-Wizard.exe"" ""%1"""

[Code]
function ShowCustomLicensePage(): Boolean;
begin
  MsgBox('*** IMPORTANT NOTICE ***'#13#10#13#10 +
       'MedIA-Wizard is an open-source software based on RealScaler, developed to enhance image resolution using advanced AI models.'#13#10 +
       'This software is distributed under the MIT license and integrates various third-party technologies, with rights and credits belonging to their respective creators.'#13#10#13#10 +
       '*** DISCLAIMER ***'#13#10 +
       'The developer, Iván Eduardo Chávez Ayub, and the MedIA-Wizard project disclaim any liability for direct, indirect, incidental, or consequential damages arising from the use or inability to use this software.'#13#10 +
       'This program is provided "as is", without any express or implied warranties, including but not limited to merchantability, fitness for a particular purpose, or non-infringement.'#13#10 +
       'Furthermore, the original author(s) of RealScaler are not responsible for any issues, modifications, or consequences resulting from the use of this software.'#13#10#13#10 +
       '*** THIRD-PARTY TECHNOLOGIES ***'#13#10 +
       'MedIA-Wizard incorporates the following technologies, whose rights and credits belong to their respective authors:'#13#10 +
       ' - ONNX Runtime (Microsoft)'#13#10 +
       ' - Real-ESRGAN (Xintao Wang et al.)'#13#10 +
       ' - SRGAN (Ledig et al.)'#13#10 +
       ' - BSRGAN (Zhang et al.)'#13#10 +
       ' - IRCNN (Kai Zhang et al.)'#13#10 +
       ' - FFmpeg (FFmpeg Team)'#13#10#13#10 +
       'By installing or using this software, you acknowledge and accept these terms.'#13#10 +
       'If you do not agree, please close this window and cancel the installation.'#13#10#13#10 +
       'For more details, refer to the official license documentation.',
       mbInformation, MB_OK);
  
  Result := True;  // Continuar con la instalación
end;

procedure InitializeWizard();
begin
  ShowCustomLicensePage();  // Muestra la página de licencia
end;


