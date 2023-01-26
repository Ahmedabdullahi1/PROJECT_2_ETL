# PROJECT_2_ETL
![Covid-19-Image](https://user-images.githubusercontent.com/115706722/214872996-5228129b-827e-46d6-b84f-87f859921b3f.jpg)


This is a team ETL project focused on the death rates during COVID-19. For this project we identified two datasets, sourced from [Kaggle] (_) and [OWID] (_). We combined these datasets to create comparative data over a two year period (2020-2022) from different countries.


![covid-and-rbc xd1c8176b](https://user-images.githubusercontent.com/115706722/214858201-ab241306-e267-4f41-96dc-cbcd44e1a4e1.jpg)


## Contents

* [Datasets](#dataset-header)
* [Limitations](#limitations-header)
* [Project Outline](#project-header)
* [ETL report](#ETL-header)
* [Dependencies and Setup Required](#dependencies-header)
* [File Guide](#file-header)
* [Team](#team-header)


## <a id="dataset-header"></a>Datasets

Please see the [File Guide](#file-header) for a complete directory of the files used in this project

## <a id="limitations-header">Data Limitations
Although our investigation was very interesting, and the data we have acquired is regularly updated with and its findings are **"true"**, it is important to note that they do not **"tell the entire story".** It is also worth noting that data gathered during covid cannot be used with absolute certainity of reliability.

## <a id="project-header"></a>Project Outline

## <a id="ETL-header"></a>ETL report
 Extract, Transform & Load
 
 **Extract** 📂
We started by extracting the two CSV files and examining them separately to see what we were working with.

**Transform** 🧹

We dropped many of the columns that were not relevant to our project, then we renamed the column heads in both DataFrames to that we could concatanate the two DataFrames:

To estimate the period of the combined dataset, we decided the common start and end dates for countries between datasets 
We were careful not to mistakenly suggest a country has low deaths/cases when they have provided less data than others

We also created a visualisation to display the spread of data over time 

[screenshot of plot]

change 'newstartdate' to 'newdate' to allow merge on this variable with the OWID dataset
## <a id="dependencies-header"></a>Dependencies and Setup Required

* jupyter notebook `pip install notebook`
* pandas `pip install pandas`

- import **pandas** as **pd**
- import **numpy** as **np**
- import **matplotlib.pyplot** as **plt**


## <a id="file-header"></a>**File Guide**

 - Kaggle covid data -  all_weekly_excess_deaths.csv
 - Our World in data - owid-covid-data.csv
 - Loading, extracting and cleaning data - ETL_updated.ipynb
 - SQL schema - 
 

## <a id="team-header"></a> Team
[Ahmed Abdullahi](https://github.com/Ahmedabdullahi1),
[Gussie Poole](https://github.com/gussiepoole),
[Kareem](https://github.com/a-kareem),
[Fazeleh Arjmandilari](https://github.com/FazelehA)

