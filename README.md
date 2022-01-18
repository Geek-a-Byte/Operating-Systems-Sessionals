# Operating-Systems
## introduction
<h3>process management</h3>

  - how multiple process runs
<h3>Scheduling</h3> 

  - which process runs at which time
<h3>Cricital Section</h3>

  - if two process run together, then harm can be caused to data
<h3>Deadlock</h3>

  - If process A depends on process B and process B depends on process C, and process C depends on process A, deadlock can happen.
<h3>How do we use computer without operating system</h3>

  - User have to spend more time on CPU
  - User have to decide space management of hard disc
  - User have to walk with wire :|
  - Scheduling needs to be done by the user
  - Can't process multiple tasks.

<h3> How does OS help</h3>

  - gives user an interface where user can run or execute different applications

<h3> Kernel Mode </h3>

  - more secure than user mode

<h3> How does a program run</h3>

- as a program will be executed by CPU, so instructions are written into memory
- then interacts with several device for instance, for input it interacts with input device, for monitoring output it interacts with monitor, there is a management system for other devices so that the CPU can decide which task will be held before another task.
- A manager needs to have three knowledges: Understand how components work, Manage them wisely, Allocate them efficiently.

<h3> CPU Modes</h3>

- cpu works in two modes : 
- User mode : if a user runs an application, then it is run on user mode
- Kernel Mode : If a user runs different application, then kernel mode allows him to access its components if needed at that time. 
- In general, Os works in Kernel mode, as this mode completely does work of OS.
- to read input, we write scanf, request for the library function needed for scanf is sent to the OS, at that time, OS switches from user mode to kernel mode. Os then provides necessary hardware resources.

## Roles of OS

### Extended machine


### work of OS
- resourse allocation and deallocation 
- external device management
- core of OS is kernel
- we will use kernel by shell commands and shell scripts
- linux is an open source os.
- OS - windows / linux / MACOS
- Dual boot / bootable pendrive / VM 
### VM 
it runs an OS(ubuntu linux) as an application of currently installed OS(Windows).It creates a virtual environment, then we install the OS in that environment.
### User directory
- root/home/nazia
### Terminal Commands

1 . if we want to know the account we are logged into currently then :
```console 
whoami
```
2. print working directory 

```console 
pwd
```

```diff 
- by default (the first slash indicates root)/home/username/ in red
```

3. ```nazia@nazia: ~$``` : here the ~ sign means ```/home/username/```
4. ```cd``` takes us to ```/home/username/```
5. cd path
6. cd means change directory
7. absolute path - starts from root address
8. relative path - starts with respect to current folder
9. ```cd /``` - goes to the root
10. go back to previous folder ```cd ..```
11. we can write ~/Desktop instead of /home/Desktop, hence ~ is a replacement of /home
12. to make a new folder mkdir
13. To list information about directory or files : ls (only ls command will not show the hidden files) 
<pre>
This command contains some options.
■ -a [ do not hide entries starting with . ] , a means all files including hidden would be shown
■ -A [ do not list implied . and .. ] 
■ -h [ print sizes in human readable format ]
■ -l [ use a long listing format ]
■ -S [ sort by file size ]
</pre>

14. mkdir dir1 dir2 dir3
15. mkdir -p dir4/dir5/dir6
16. to write multiple words folder name : mkdir "hello world" or mkdir file.\ name1 (not sure about this one)
17. terminal commmands save into txt file : ls>output.txt (> - sends output to file instead of the terminal window)
18. to see the contents of a file : cat name.txt
19. echo "hello world" - prints hello world in the terminal
20. echo "hello world1">test1.txt
21. echo "hello world2">test2.txt
22. echo "hello world3">test3.txt
23. cat test1.txt test2.txt test3.txt>combine.txt
24. cat combine.txt

<pre>
output:
hello world1
hello world2
hello world3
</pre>

25. (>-rewrites) , if we want to append to a file then we have to use >> ( >> - command is used to append to a file if it already exists)
26. cat test1.txt test2.txt test3.txt>>combine.txt
<pre>
output:
hello world1
hello world2
hello world3
hello world1
hello world2
hello world3
</pre>

27. if the file size is bigger then seeing the contents might be difficult so write : less file-path
28. to see more : more file-path
29. to delete a file : rm filename.txt
30. to delete a directory if nothing is there : rmdir dir1
31. to delete a directory if something is there : rmdir -r dir1
32. echo "hello" > test_1.txt
33. cat test?.txt
<pre>
output:
hello world1
hello world2
hello world3
</pre>
34. cat test*.txt

<pre>
output:
hello world1
hello world2
hello world3
hello
</pre>

35. ```wc -l test1.txt``` - counts the line no of test1.txt
36. ```cat combine.txt|uniq|wc -l``` - counts the unique line no of this file but this can remove duplicate lines if they are one after another. if the duplicate lines are not consecutive then it will show the total line count.
37. ```sort combine.txt|uniq|wc -l```- sorts the duplicate lines and prints the actual unique count. in this case it will print 6
38. ```mv test1.txt dir2``` - cut paste
38. ```cp test1.txt dir2``` - copy paste
39. ```mv test1.txt nazia.txt``` - renames a file
40. there are 3 types person to give permission of a file : user, group, other
41. ```chmod 664 test1.txt``` - helps to change permission of a file 
<pre>
7 - rwx
6 - rw
5 - rx
4 - r
2 - w
1 - x
0 - no permission
</pre>
42. ```ls -l filename``` - shows permission list of all the persons
43. ```touch filename``` - creates an empty file
44. ```cat>>filename.txt``` - creates a new file
46. ```grep string filename``` - to match strings
47. ```head``` - shows all lines of a line or first few lines of a file
48. ```head -n 3 temp.txt``` - want to see first 3 lines
49. ```head -n -1 temp.txt``` - prints all lines except last line
50. ```head -n 2 temp1.txt temp2.txt``` - show first 2 lines of both files
51. ```tail -n 3 temp.txt``` - prints last 3 lines of this files
52. bc - basic calculator mode
53. -w - word count 
54. -l - line count 
55. -c - string count - it would give +1 for newline
```console
wc filename
wc -l filename
wc -w filename
wc -c filename
```
## Shell scripts

collections of commands will be written in a .sh file. then execute to see the results
to open the file ```gedit filename.sh```
```
pwd
echo "hello"
ls
```

