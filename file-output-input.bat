<!-- :
@echo off
setlocal EnableDelayedExpansion

if "%~1" equ "/?" (
	echo Creates an input value window and output
	echo   the result to console or assign it to variable
	echo   if variable name is passed
	(echo()
	echo Usage:
	(echo()
	echo %~0nx [storeInputTo]
)
for /f "tokens=* delims=" %%p in ('mshta.exe "%~f0"') do (
    set "input=%%p"
)


if "%~1" equ "" (
	echo %input%
	endlocal
) else (
	endlocal & (
		set "%~1=%input%"
	)
)
exit /b
-->

<html>
<head><title>Paranoid Youtube mp3fier</title></head>
<body>

    <script language='javascript' >
		window.resizeTo(1000,400);
		function entperPressed(e){
			    if (e.keyCode == 13) {
					pipePass();
				}
		}
        function pipePass() {
            var pass=document.getElementById('input').value;
            var fso= new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1);
            close(fso.Write(pass));

        }
    </script>

    <h1>Paranoid Youtube mp3fier</h1>
    <br />
    <h2>Save to ...</h2>
    <br />
    <p>ex) %userprofile%\Music</p>
    <br />
    <input type="text" id="input" value="">
    <hr>
    <button onclick='pipePass()'>Save</button>
    <br />

</body>
</html>
