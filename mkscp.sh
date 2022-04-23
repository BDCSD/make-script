#!/bin/bash

# Author: Christian Calvert

# Date Created: 7/9/2019

# Date Modified: 7/10/2019

# Description: Creates a bash script file with #!/bin/bash and script headers automatically inserted, opens the file with nano for editing, and gives 744 permissions to your file. 
# This saves you from having to type the shebang and script headers, as well as giving permissions to every simple script. File is saved in the directory you specify after redirection.

# Usage: mkscp <Script Name>


# !!!Modify location variable with your directory for bash scripts!!!

if [[ $# -eq 0 ]] ; then
        echo 'ERROR: You did not provide a filename to be created.'
	echo 'Please add a filename. EX: mkscp <filename>'
        exit 1
fi


#Modify your desired script save location here.

location=bash/scripts/$1

echo "#!/bin/bash" > ~/$location
echo " " >> ~/$location 
echo "# Author: " >> ~/$location 
echo "# Date Created: " >> ~/$location 
echo "# Date Modified: " >> ~/$location 
echo "# Description: " >> ~/$location 
echo "# Usage: " >> ~/$location 

chmod 744 ~/$location

nano ~/$location

exit 0
