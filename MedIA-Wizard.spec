# -*- mode: python ; coding: utf-8 -*-


a = Analysis(
    ['C:\\Users\\negro\\Desktop\\MedIA-Wizard\\MedIA-Wizard.py'],
    pathex=[],
    binaries=[],
    datas=[('C:\\Users\\negro\\Desktop\\MedIA-Wizard\\AI-onnx', 'AI-onnx'), ('C:\\Users\\negro\\Desktop\\MedIA-Wizard\\Assets', 'Assets')],
    hiddenimports=[],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
    optimize=0,
)
pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    a.binaries,
    a.datas,
    [],
    name='MedIA-Wizard',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    upx_exclude=[],
    runtime_tmpdir=None,
    console=False,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
    icon=['C:\\Users\\negro\\Desktop\\MedIA-Wizard\\logo.ico'],
)
