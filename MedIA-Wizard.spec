# -*- mode: python ; coding: utf-8 -*-

a = Analysis(
    ['MedIA-Wizard.py'],  # Ruta relativa al script principal
    pathex=[],  # Puedes agregar rutas adicionales si es necesario
    binaries=[],
    datas=[
        ('AI-onnx', 'AI-onnx'),  # Ruta relativa de AI-onnx
        ('Assets', 'Assets')  # Ruta relativa de Assets
    ],
    hiddenimports=[
        'onnxruntime',  # Si usas ONNX, esto es necesario
        'numpy',  # Algunas librerías dependen de numpy
    ],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[
        'PyQt5', 'PyQt5.QtWidgets',  # Exclusión de PyQt5 y sus módulos
        'PyQt6', 'PyQt6.QtWidgets',  # Exclusión de PyQt6 y sus módulos
        'qtpy',  # Exclusión de qtpy si no lo estás utilizando
        'QDarkStyle',  # Exclusión de QDarkStyle si no es necesario
        'QScintilla',  # Exclusión de QScintilla si no lo usas
        'panda3d',  # Exclusión de panda3d si no es necesario
    ],
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
    upx=False,  # Se desactiva UPX para evitar problemas de compresión
    upx_exclude=[],
    runtime_tmpdir=None,
    console=False,  # Si quieres ver la consola, ponlo en True
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
    icon=['logo.ico'],  # Se usa una ruta relativa para el icono
)
