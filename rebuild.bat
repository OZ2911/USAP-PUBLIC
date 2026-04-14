@echo off
set WIKI=C:\Users\Administrator\Documents\USAP\WIKI\REST-API-для-зовнішніх-систем
set DOCS=C:\Users\Administrator\Documents\usap-docs\docs

echo Copying wiki files...
del /Q "%DOCS%\REST-API\*.md" >nul 2>&1
copy /Y "%WIKI%.md" "%DOCS%\index.md" >nul
xcopy /Y /Q "%WIKI%\*.md" "%DOCS%\REST-API\" >nul

echo Fixing links in index.md...
python -c "
import pathlib
f = pathlib.Path(r'%DOCS%\index.md')
content = f.read_text(encoding='utf-8')
content = content.replace('./REST-API-для-зовнішніх-систем/', './REST-API/')
f.write_text(content, encoding='utf-8')
"

echo Building site...
cd /d "C:\Users\Administrator\Documents\usap-docs"
mkdocs build

echo Done.
