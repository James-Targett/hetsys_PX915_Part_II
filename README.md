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

## How to submit a job in Avon  

Please drag and drop all the meta and para folder from your own drive to Avon to complete the upload process. 

<img src="https://i.imgur.com/cVigUuu.png" width="600">  

As an example, in Avon, navigate yourself into meta's AB folder (e.g. Avon -> meta -> AB). Then, right click the mouse in the blank space in Avon and click "copy path to clipboard"  
<img src="https://i.imgur.com/PU4cs3o.png" width="200">  

Click "Open session in PuTTY" to open the terminal  
<img src="https://i.imgur.com/CdMtHui.png" width="200">  

In the terminal:  

* Type in your password to login  
    <img src="https://i.imgur.com/kBZlKfL.png" width="600">  
* Type `cd path` to go to the correct directory  
  * replace`path` with the actual path you have copied  
* Type `sbatch job.sh` to submit a new job  
* Type `squeue -u username`  to check job status
  * replace `username` with your own SCRTP username 
    <img src="https://i.imgur.com/HPRo2OO.png" width="600">  

Repeat the same process for meta's A folder, meta's B folder, para's AB folder, para's A folder, and para's B folder. 

Open jt.out and locate the total energy of the system (should be around line 2700)  

<img src="https://i.imgur.com/GXfQkTd.png" width="300">  

## Other useful terminal commands  

* Type `ls` or `ls -l` to see the list of items in the current directory
* Type `squeue` to check all the jobs
* Type `scancel job number` to cancel a job
  * the job number could be found in the job status
* Type `unzip folder name` to unzip a folder
  * replace `folder name` with the actual name of your zip folder

## Notepad++ Tips and Tricks  

Here are some more [tips and tricks](https://www.cathrinewilhelmsen.net/series/notepad-tips-tricks/) to help you to use Notepad++ more effectively and efficiently.  

<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
<script type="text/x-mathjax-config">MathJax.Hub.Config({ tex2jax: {inlineMath: [['$', '$']]}, messageStyle: "none" });</script>