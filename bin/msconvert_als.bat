@echo off
cd C:\Users\linds\Downloads\ALS_CSF_Biomarker_Study-1582674932238\Q-Exactive_Plus
"C:\Program Files\ProteoWizard\ProteoWizard 3.0.18267.3a844df00\msconvert.exe" -v --zlib --64 --mgf --filter "peakPicking true 1-" *.raw
