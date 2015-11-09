#!/bin/bash
#====================================================
# Still Alive - Portal
#----------------------------------------------------
# Tim Backus
# tbackus127@gmail.com
#====================================================

#----------------------------------------------------
# :: Lyrics
#----------------------------------------------------
#
# Control characters
# ~ = End line
# ? = Pause
# * = Slow Letter-by-letter
# = = Moderate Letter-by-letter
# + = Fast Letter-by-letter
#----------------------------------------------------

LYRICS="+\
Forms FORM-29827281-12:~
Test Assessment Report~~~~~???=\
This was a triumph.??~\
I'm making a note here:\
?~HUGE SUCCESS.?~\
It's hard to overstate~\
my satisfaction.??~~\
Aperture Science??~\
We do what we must~\
because we can.?~\
For the good of all of us,~\
Except the ones who are dead.~~\
But there's no sense crying~\
over every mistake.~\
You just keep on trying~\
till you run out of cake.~\
And the science gets done,~\
And you make a neat gun~\
For the people who are~\
still alive.~~???\
I'm not even angry.??~\
I'm being *so sincere= right now.?~\
Even though you broke my heart~\
And killed me.??~\
And tore me to pieces.??~\
And threw every piece *into a fire=.?~\
As they burned it hurt because~\
I was so happy for you.~~\
Now these points of data~\
make a beautiful line.~\
And we're out of beta,~\
We're releasing on time,~\
so I'm GLaD I got burned.~\
Think of all the things we learned~\
for the people who are~\
still alive.~???~\
Go ahead and leave me.??~\
I think I *prefer to stay inside=.??~\
Maybe you'll find someone else~\
to help you??~\
Maybe Black Mesa...??~\
+THAT WAS A JOKE.~\
?HAHA.? FAT CHANCE=.??~\
*Anyway=, this cake is great.~\
+It's so delicious and moist=.~~\
Look at me still talking~\
when there's Science to do.~\
When I look out there.~\
it makes me GLaD I'm not you.~\
I've experiments to run.~\
There is research to be done.~\
On the people who are~\
still alive.~~~\
+PS:= And believe me I am~\
still alive.?~\
+PPS:= I'm doing Science and I'm~\
still alive.?~\
+PPPS:= I feel FANTASTIC and I'm~\
still alive.?~~\
+FINAL THOUGHT:=~\
While you're dying I'll be~\
still alive.?~~\
+FINAL THOUGHT PS:=~\
And when you're dead I will be~\
still alive.?~~~?\
STILL ALIVE?~\
*(still alive)~~="

#---------------------------------------------------
# :: Main function
#---------------------------------------------------

# Clear the window
clear

letter=""
spd=0.07

for ((i = 1; i <= $(expr length "$LYRICS"); i++)); do
        letter="$(expr substr "$LYRICS" "$i" 1)"

        if [[ $letter == "*" || $letter == "=" || $letter == "+" || $lette$
        then
                if [[ $letter == "*" || $letter == "=" || $letter == "+" ]]
                then
                        if [[ $letter == "*" ]]
                        then
                                spd=0.12
                        elif [[ $letter == "+" ]]
                        then
                                spd=0.03
                        else
                                spd=0.07
                        fi
                elif [[ $letter == "?" ]]
                then
                        sleep 0.8
                elif [[ $letter == "~" ]]
                then
                        echo -ne "\n"
                else
                        echo -e \n\nERROR\n\n
                fi
        else
                echo -ne "$letter"
        fi
        sleep $spd
done

sleep 1