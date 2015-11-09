#!/bin/bash
#========================================================
# Song Lyric API
#--------------------------------------------------------
# Tim Backus
# tbackus127@gmail.com
#--------------------------------------------------------
#
# :: HOW TO USE THIS BEAST ::
#
#--------------------------------------------------------
# Call this program using "./SongAPI.sh <Path to Lyrics>"
#--------------------------------------------------------
# Control characters
# ~     End Line
# ?     Pause
# *     Set speed to slow
# =     Set speed to moderate
# +     Set speed to fast
#--------------------------------------------------------

# Clear the window
clear

# Set LYRICS variable to argument 1.
LYRICS=$(cat $1)

# Initialize string.
letter=""

# Set default speed.
spd=0.07

# Loop until there are no more characters in the file.
for ((i = 1; i <= $(expr length "$LYRICS"); i++)); do

        # Set current letter to character number indicated by $i.
        letter="$(expr substr "$LYRICS" "$i" 1)"

        # Execute if letter is a control character
        if [[ $letter == "*" || $letter == "=" || $letter == "+" || $letter$
        then
                # Detect if a speed control character
                if [[ $letter == "*" || $letter == "=" || $letter == "+" ]]
                then

                        # Slow speed
                        if [[ $letter == "*" ]]
                        then
                                # Set delay to 0.12 ms
                                spd=0.12
                        # Fast speed
                        elif [[ $letter == "+" ]]
                        then
                                # Set delay to 0.03 ms
                                spd=0.03

                        # Otherwise, set to 0.07 ms (default)
                        else
                                spd=0.07

                        # End the conditional check.
                        fi

                # Check if pause character
                elif [[ $letter == "?" ]]
                then

                        # Execute the pause
                        sleep 0.8

                # Check if line break character
                elif [[ $letter == "~" ]]
                then

                        # Output line break character
                        echo -ne "\n"
                else

                        # This should not ever happen.
                        echo -e \n\nERROR\n\n
                fi

        # If it's none of the control characters, output the character.
        else
                echo -ne "$letter"
        fi

        # Pause for time indicated by $spd variable.
        sleep $spd

# Close the for loop
done

# Output a blank line
echo -ne "\n"

# Pause for 1 second.
sleep 1
