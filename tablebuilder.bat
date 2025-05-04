SET c2a=%~dp0tools\c2a.py
SET FE4c2a=%~dp0tools\FE4c2a.py

cd %~dp0Tables
for %%t in (*.csv) do (
		python "%c2a%" "%%t" "%%~nt.csv.asm"
)

cd %~dp0Tables\SPECIAL
python "%FE4c2a%" "CharacterData.csv" "CharacterDataHelper.h" "CharacterData.csv.asm"

cd %~dp0Tables\SPECIAL
python "%FE4c2a%" "ItemData.csv" "ItemDataHelper.h" "ItemData.csv.asm"
pause