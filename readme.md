# Intro
This is a tool made to simplify the process of moving quickly between folders in Powershell. Instead of using cd to navigate between folders could you just use one command to instantly get to the correct directory.

# Installation

1. Copy the ``ttCommands`` folder into ``C:\Program Files\WindowsPowerShell\Modules\``. Keep in mind that you need elevated rights to edit and create files in this folder. Rights changed on the folder or run powershell with elevated rights to create new shortcuts.

2. Run powershell and enter:
``Set-ExecutionPolicy RemoteSigned``
``Import-Module ttCommands -Force``

3. Run ``tthelp`` to get a list of commands available.