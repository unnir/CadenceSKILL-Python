(defun HelloPython ()
	(let ( childPID result) 
		childPID = ipcBeginProcess(  
			simplifyFilename(  ;Returns the fully expanded name of the file
				"./IPC/CadenceSKILL-Python/HelloCadence.py");Path to the python file
				) 
		ipcWaitForProcess( childPID )  ; wait for a process
		 
		ipcWriteProcess( childPID strcat("& hello Python " "\n") ) ; !important! add \n to the end of your string 
	
		result = ipcReadProcess( childPID 1) ; read 
	
		ipcKillProcess( childPID ) ;kill

		result
	) ; let 
) ; procedure

;to use run (HelloPython ) in the CIW 
