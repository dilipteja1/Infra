# Mount NAS

=== "Windows"
   	1. Open File Explorer
            	2. type "**//[NAS-IP](index.md###NAS)**" in the file explorer bar
         	3. provide the user name and password
		1. If you dont have username and password, contact **Dr. Gurudev Dutt**
=== "Linux"
	1. download the **nasmounter.sh** script file
		1. Present under the scripts folder in the git repository. 
		2. If you don't have access to git repository, contact administrator to provide one
    2. Open terminal and navigate to the downloaded script file 
    ```
    	chmod +x nasmounter.sh
    	./nasmounter.sh
    ```
    3. Provide the details it asks in the terminal like NAS-IP, localaddress, username, password etc.
=== "MacOS"
	> soon