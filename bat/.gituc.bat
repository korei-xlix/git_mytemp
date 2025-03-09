echo off
rem ### <<< Shift-Jis >>> ##############

rem ### Start Program ##################

rem echo "### arguments ##########################"
rem echo %~dp0
rem echo %%0 = %0
rem echo %%1 = %1
rem echo %%2 = %2
rem echo %%3 = %3
rem echo "########################################"

rem echo "hello world !"
rem git status

if "%1"=="user1" (
	git config --global user.name user1@githubxxx.com
	git config --global user.email user1@mailxxx.com
rem	git config --global --list
	echo ### user.name ########
	git config --global user.name
	echo ### user.email #######
	git config --global user.email
	echo "git user changed <%1>

) else if "%1"=="user2" (
	git config --global user.name user2@githubxxx.com
	git config --global user.email user2@mailxxx.com
rem	git config --global --list
	echo ### user.name ########
	git config --global user.name
	echo ### user.email #######
	git config --global user.email
	echo "git user changed <%1>

) else (
rem	git config --global --list
	echo ### user.name ########
	git config --global user.name
	echo ### user.email #######
	git config --global user.email
)

rem ### End Program ####################
pause
exit /b
