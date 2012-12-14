#!/bin/bash

###############
# Conventions #
###############

# All scripts will start ts_ 
# All libraries will have a second part that acts as a prefix
# finally there will be an actual human readable name
# eg ts_rt_library-name.sh

# All functions will start with the prefix followed by a dot. e.g. rt.fuction_name

# all libraries will:
#       include a prefix.describe function 
#       have a #!/bin/bash line at the top
#       call this function at the end of the script 
#       so you can call the script directly to get a description of what it does#       ditto for prefix.list_functions

# Functions common to all libraries
global.tolower(){
echo $1 | tr [:upper:] [:lower:]
}

global.check_desc(){
local var=$(global.tolower $1)
if [[ $var == 'help' ]]; then
    return 0
else
    return 1
fi
}


# Don't forget to replace template with actual prefix

#Describe what this library does
template.describe(){ cat <<EOF

This file is intended as a bash library. 
Calling it directly merely  prints this description.

EOF
}

#List functions library contains
template.list_functions(){ cat <<EOF

EOF
}

# END OF FILE, FUNCTIONS GO ABOVE THIS LINE

# Don't forget to replace template with actual prefix

# Describe what this library does, and what it contains
template.describe
template.list_functions

