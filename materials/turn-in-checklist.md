---
layout: page
title: Assignment Submission & Checklist
---

- All assignments should be submitted through [Canvas](http://ufl.instructure.com/)

- What files to submit: 
    - **Week 1** - one text file (such as a Word doc), one .xlsx file, one .sqlite file containing three tables
    - **Week 2** - one .sqlite file containing 16 saved SQL views
    - **Weeks 3 & 5** - a zip file containing one .R file & any data files needed to run it
    - **Week 6** - one .sqlite file with 3 saved SQL views, a zip file containing one .R file & any data files needed to run it
    - **Week 7** - two GitHub repositories
    - **Weeks 9-11, 13** - a zip file containing one .R file & any data files needed to run it
- To create zip, put all files into single folder, right click folder, and select compress option


# Code Checklist

#### Clean up your code

Code should be easy to read and understand.

- Only include code and comments necessary for the assignment. Remove anything else (e.g., notes taken during class, commented code that isn't needed anymore).
- Remove extra/duplicate files. Only turn in what is necessary for the assignment.
- Clearly label problems using comments.

#### Make sure your code runs like you think it does

Code should run from the start of the file to the end of the file without problems. To make sure this is true:

- Clear the R environment by clicking on the broom icon on the `Environment` tab.
- Run the entire file by either clicking the `Source` button or using the `Ctrl-Shift-Enter` keyboard shortcut.

#### Work with data files appropriately

Code should run the same way regardless of which computer it is run on. In order to grade your code someone will need to run it on another computer. To make sure your code will work on another computer:

- Do not use setwd()
- Use relative paths, not absolute paths. E.g., use `data/mydata.csv` instead of `C:\Users\Batman\DataCarp\data\mydata.csv`.
- Make filenames in the code match the actual filenames exactly including capitalization
