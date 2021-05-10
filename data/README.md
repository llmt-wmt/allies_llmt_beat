## Data for the ALLIES Lifelong Learning Machine Translation evaluation campaign

# Description
This dataset contains the documents from Europarl v10 and NewsCommentary v15.
Each document has been renamed to the following format:
**corpus**-**date**-**time1**-**time2**-**suffix**

* **corpus** is either 'ep' for Europarl or 'nc' for NewsCommentary.
* **date** is the document date in the formnat YYYYMMDD.
* **time1** and **time2** (both optional) are integer values making sure that each document has a unique **date**-**time1**-**time2**.
* **suffix** is the remaining of the originial document name.

For Europarl, the renaming simply consists in merging year, month and day values from original name and add a '**time1**' tag to avoid multiple files with same timestamps.
For NewsCommentary, the timestamps correspond to the 'article:published_time' extracted from the original html files.

# Recreating the data

Recreate the tgz file then extract it:
### For EN-FR:
```
cat en-fr.tgz.part* > en-fr.tgz
tar xzvf en-fr.tgz
```
### For EN-DE:
```
cat en-de.tgz.part* > en-de.tgz
tar xzvf en-de.tgz
```
