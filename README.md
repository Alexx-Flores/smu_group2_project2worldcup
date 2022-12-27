# smu_group2_project2worldcup

This is the final submission for project 2 group 2. Our project is about
scraping the FIFA World Cup player statisics and uploading the data
into a PostGres database.

Our deliverable files are organized into three main folders:

1. ERD Diagrams and Schema -- these consist of the design and schema of our database.

2. Notebooks and CSV files -- these consist of four Jupyter notebooks: 

        a. WorldCupScraping (To scrape the websites)
        b. Transformer Code (To transform the scraped tables into database appropriate tables)
        c. Exporting_To_PostGres (To upload our transformed tables into a PostGres database)
        d. Visualizations (Running a few SQL squeries and using Python, Pandas, and Matplotlib to create some graphs)

    In this folder you will also find all the .csv files that were created. A more detailed explanation of these
    files is in the write-up, but in short:

        players.csv and keepers.csv are cleaned up versions of the scraped data. All the other tables are
        the results of transformed data and are ready to be uploaded to PostGres

3. Proposal, Writeup, and Screenshots -- you will find our proposal, writeup, and query screenshots here.

4. The folders Omar_project_2_ERD and Sajid_project_2 were only used as workspaces while we were working on this project.
   There are only two folders was because we used the sajid_project_2 folder for scraping, transforming, and uploading as
   it would simplify the paths we needed for .csv files. These folders are only for completion and we do not intend for them
   to be used in the grading process.