# hetsys_PX915_Part_II

## Software Required  

All the main software used in the Device Modelling Group can be found in [Computational Tools and Links](https://warwick.ac.uk/fac/sci/eng/research/grouplist/sensorsanddevices/nanolab/internal/tools/) (only accessible to internal group members).  

If you are an external group member, please download these three desktop applications listed below as they are essential for carrying out calculations for **PX915 Part II peer-to-peer UQ exercise**:  

- [Notepad++](https://notepad-plus-plus.org/downloads/)  
  - please set Notepad++ as your default text editor  
- [Winscp](https://winscp.net/eng/download.php)  
  - use Winscp to submit calculations on SCRTP hardware  

Please also make sure to have an active SCRTP Linux Desktop account.   

* If you **DO NOT HAVE** an active SCRTP Linux Desktop account, please follow the instructions in the [Getting Started - SCRTP Linux](https://warwick.ac.uk/research/rtp/sc/desktop/gettingstarted)  to request a new account. Typically, it will take a couple of days to get a new account.  
* If you **HAVE** an active SCRTP Linux Desktop account, then please visit [Register for HPC access](https://warwick.ac.uk/research/rtp/sc/hpc/register) and register access for Avon.  

> **Note:**  
> * All the inputs files will **ONLY** work in Avon.  
> * **NEVER** run these calculations in Godzilla and Orac  

### How to submit a job in Avon  

Right click the mouse in the blank space in the Avon and then click "copy path to clipboard"  
<img src="https://i.imgur.com/EBvFNpo.jpg" width="200">  

Click "Open session in PuTTY" to open the terminal  
<img src="https://i.imgur.com/KU6wLCi.jpg" width="400">  

In the terminal:  

* Type in your password to login  
* Type `cd path` to go to the correct directory  
  * replace`path` with the actual path you have copied  
* Type `sbatch job.sh` to submit a new job  
  * the submission file can be named as anything, it could also be names as `job.sh` or `sub.sh`  
  * you just need to make sure you are submitting a ".sh" file  

### Other useful terminal commands  

* Type `ls` or `ls -l` to see the list of items in the current directory
* Type `squeue -u username`  to check job status
  * replace `username` with your own SCRTP username 
* Type `squeue` to check all the jobs
* Type `scancel job number` to cancel a job
  * the job number could be found in the job status
* Type `unzip folder name` to unzip a folder
  * replace `folder name` with the actual name of your zip folder

## Notepad++ Tips and Tricks  

Here are some more [tips and tricks](https://www.cathrinewilhelmsen.net/series/notepad-tips-tricks/) to help you to use Notepad++ more effectively and efficiently.  

