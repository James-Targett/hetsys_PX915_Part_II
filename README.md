# hetsys_PX915_Part_II  

## Contents

* [Required Software](#Required-Software)  
* [Submit Jobs in Avon](#Submit-Jobs-in-Avon)  
* [Calculate Binding Energy](#Calculate-Binding-Energy)  
* [Other Useful Terminal Commands](#Other-Useful-Terminal-Commands)  
* [Tips and Tricks](#Tips-and-Tricks)  
  * [Notepad++](#Notepad)
  * [Converting Markdown File to PDF File](#Converting-Markdown-File-to-PDF-File)  

## Required Software  

All the main software used in the Device Modelling Group could be found in [Computational Tools and Links](https://warwick.ac.uk/fac/sci/eng/research/grouplist/sensorsanddevices/nanolab/internal/tools/) (only accessible to internal group members).  

If you are an external group member, please download these two desktop applications listed below as they are essential for carrying out calculations for **PX915 Part II peer-to-peer UQ exercise**:  

- [Notepad++](https://notepad-plus-plus.org/downloads/)  
  - set Notepad++ as your default text editor for this exercise  
- [Winscp](https://winscp.net/eng/download.php)  
  - use Winscp to submit calculations on SCRTP hardware  

Make sure to have an active SCRTP Linux Desktop account.  

* If you **DO NOT HAVE** an active SCRTP Linux Desktop account, please follow the instructions in the [Getting Started - SCRTP Linux](https://warwick.ac.uk/research/rtp/sc/desktop/gettingstarted)  to request a new account. Typically, it will take a couple of days to get a new account.  
* If you **HAVE** an active SCRTP Linux Desktop account, then please visit [Register for HPC access](https://warwick.ac.uk/research/rtp/sc/hpc/register) and register access for Avon  

> **Note:**  
> * All the inputs files will **ONLY** work in Avon  
> * **NEVER** run these calculations in Godzilla and Orac  
> * To make things easy, all the software packages and functions such as SIESTA have already been installed for you in Avon  
> * The only tasks you will need to do is to submit the input files and compare you results with my results  
> * Have fun!  

[Back to Contents](#Contents)  

## Submit Jobs in Avon  

Drag and drop all the meta and para folder from your own drive to Avon to complete the upload process.  

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

Repeat the same job submission process for meta's A folder, meta's B folder, para's AB folder, para's A folder, and para's B folder.  

[Back to Contents](#Contents)  

## Calculate Binding Energy  

Take meta's AB folder as an example again, when all the calculations are completed, locate "jt.out" file. Then, open "jt.out" and locate the total energy of the system (should be around line 2700). This energy value is the ![](https://latex.codecogs.com/gif.latex?E_%7BAB%7D).  

<img src="https://i.imgur.com/GXfQkTd.png" width="300">  

All the ![](https://latex.codecogs.com/gif.latex?E_%7BAB%7D), ![](https://latex.codecogs.com/gif.latex?E_%7BA%7D) and ![](https://latex.codecogs.com/gif.latex?E_%7BB%7D) for both meta and para could be obtained by following the same procedures.  

You now could use ![](https://latex.codecogs.com/gif.latex?%5CDelta%20E%3DE_%7BAB%7D-E_%7BA%7D-E_%7BB%7D) to calculate the binding energy ![](https://latex.codecogs.com/gif.latex?%5CDelta%20E):  

The expected values are:  


|Molecule|![](https://latex.codecogs.com/gif.latex?E_%7BAB%7D)|![](https://latex.codecogs.com/gif.latex?E_%7BA%7D)|![](https://latex.codecogs.com/gif.latex?E_%7BB%7D)|![](https://latex.codecogs.com/gif.latex?%5CDelta%20E)|
|:--------:|:--------:|:--------:|:--------:|:----------:|
|meta|-87905.202018|-8375.39313|-79528.362568|-1.44632|
|para|-87905.205948|-8375.426394|-79528.361907|-1.41765|


[Back to Contents](#Contents)  

## Other Useful Terminal Commands  

* Type `ls` or `ls -l` to see the list of items in the current directory  
* Type `squeue` to check all the jobs  
* Type `scancel job number` to cancel a job  
  * the job number could be found in the job status  
* Type `unzip folder name` to unzip a folder  
  * replace `folder name` with the actual name of your zip folder  

[Back to Contents](#Contents)  

## Tips and Tricks  

### Notepad++  

Here are some more [tips and tricks](https://www.cathrinewilhelmsen.net/series/notepad-tips-tricks/) to help you to use Notepad++ more effectively and efficiently.  

### Converting Markdown File to PDF File  

Please include this line of code at the end of your Markdown files for better rendered LaTeX equations when converting them to PDF files.  

```
<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
<script type="text/x-mathjax-config">MathJax.Hub.Config({ tex2jax: {inlineMath: [['$', '$']]}, messageStyle: "none" });</script>
```

[Back to Contents](#Contents)  
