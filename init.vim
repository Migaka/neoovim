"basic shape to an acceptable state

syn on								"When this option is set, the syntax with this name is loaded, unless syntax highlighting has been switched off with :syntax off.
set encoding=utf-8						"Sets the character encoding used inside Vim.
set visualbell								"Use visual bell instead of beeping.
set ru								"Show the line and column number of the cursor position, separated by a comma.
set wrap							"This option changes how text is displayed.
set ts=4							"Number of spaces that a <Tab> in the file counts for.
set sts=4							"Number of spaces that a <Tab> counts for while performing editing operations.
set sw=4							"Number of spaces to use for each step of (auto)indent.
set et								"Use the appropriate number of spaces to insert a <Tab>.
set is								"While typing a search command, show where the pattern.
set ai								"Copy indent from current line when starting a new line.
set si								"Do smart autoindenting when starting a new line.
set nu								"Print the line number in front of each line.
set noswf							"(Don't)Use a swapfile for the buffer.
set cb=unnamed						"(unnamed) When included, Vim will use the clipboard register.
set ls=2							"The screen looks nicer with a status line if you have several windows, but it takes another screen line.
set nosmd							"If in Insert, Replace or Visual mode put a message on the last line.
"remap ii to Esc
:imap ii <Esc>

call plug#begin('~/.config/nvim/plugged')       "Plugins with Vim-Plug


call plug#end()

