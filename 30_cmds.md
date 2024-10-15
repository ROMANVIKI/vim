serch & replace:

* - search for a word under the cursor

shift + N -  to go to the prev match

n - for forward

N - for go backwards

c + i + w - change In word then 'n' to next occurance and use '.' to replace the current word with the word that used In the prev occurance

'%s/the word that we want to replace/the word that we need there/g' - to replace globally 

'%s/current word/replace with this word/gc' - this command will make you choose whether change or not by one by one use 'Y' for yes and 'N' no

Y - Yank to copy something

v + i + w - visually highlight in mode this will select the current word and then use 'y' to yank(copy) and use 'p' to paste somewhere else.

'reg' - registers 

'"' - to enter the register and then use the nums to specify which register you want to choose after that you can use 'p' to paste 

same way to save something to a particular register number - Highlight some text with the 'shift - V' and then '"+ 7 + y' , then you can paste using the num of the reg you specified

'+' Register - to copy to the system clipboard for linux 


" + % + p - special register


MACROS :


start recording a macro - q  and then the register you want to record example 'h'

after done editing press 'q' again to done recording the macro if you want to use the macro again use '@ + h' here i used h you should use the register name that you usesd to record 

you can use the macro for next 5 lines by '5 + @ + h'

from another source:


'Z + Z' - to quickly save and exit 

'z + q' - to exit without saving

select within () and {} - vib/viB

c + i + b - to change everything in the paranthesis


Edit multiple lines at once - Ctl V then 'I' add the char and then ESC

how to append the char for different length words -  'gv' to highlight the last highlighted hit 'A': append to the end 


toggle case with - '~' to capitalise the char for chage the whole word use 'g + ~ + w'

g + ~ + i + t - to capitalise a char inside a block like in html element 

Re-indent the whole file - 'gg + = + G'

'%' - to jump between (),{}, []


PUt vim in the background - 'ctrl + z' to go back to the vim use 'fg'

make a session - ':mksession session.vim' if you want to back to the session use - 'session session.vim'



open a url in browser - 'g + x'
open a file  - 'g + f'


vim marks:

mark a location and return to it:

m + a - to mark 
M + A - to jump globally and return prev "' + A"


jump to specific line - '12G'


join lines - J(for with spaces), gJ(for without spaces)





jump to particular lenth - 7k


for inserting char in the start use visual mode to select the words that you want to edit and 'normal I<the word that you want to insert at the start>

and same for the append as well replace the I with A'


'o' - switching  selection directions


% - for jumping to the matching ({[]})

i / a - for inside/ outside 

':!jq .' - for pretty print everything like in json

for sorting - ':! sort'


