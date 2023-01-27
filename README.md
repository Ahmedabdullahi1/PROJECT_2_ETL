# PROJECT_2_ETL
![Covid-19-Image](https://user-images.githubusercontent.com/115706722/214872996-5228129b-827e-46d6-b84f-87f859921b3f.jpg)


This is a team ETL project focused on obtaining and preparing data for a potential futute analysis of the relationship between the excess death rates recorded by certain coutries during the COVID-19 pandemic, and their Covid-19 incidence rates. For this project we identified two datasets, sourced from Kaggle[1] and OurWorldInData.org[2]. We combined these datasets to create comparative weekly data over a two-year period (2020-2022) from different countries.


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
Although our investigation was very interesting, and the data we have acquired is regularly updated and its findings are **"true"**, it is important to note that they do not **"tell the entire story"**: future users would need to judiciously assess the best way to use the information in the datasets provided here. It is also worth noting that data gathered across countries regarding the Covid pandemic cannot be used with absolute certainty of reliability.

## <a id="project-header"></a>Project Outline

## <a id="ETL-header"></a>ETL report
 Extract, Transform & Load
 
 **Extract** 📂
 
We started by extracting the two CSV files and examining them separately to see what we were working with.

**Transform** 🧹

We dropped many of the columns that were not relevant to our project, then we renamed the column heads in both DataFrames so that we could concatanate the two DataFrames:

To estimate the period of the combined dataset, we decided the common start and end dates for countries between datasets 
We were careful not to mistakenly suggest a country has low deaths/cases when they have provided less data than others.

We also created a visualisation to display the spread of data over time 

 
 <img width="774" alt="Screenshot 2023-01-26 at 20 58 27" src="https://user-images.githubusercontent.com/115706722/214949142-d1886845-9493-4665-b457-c08ea9d7123a.png">

change 'newstartdate' to 'newdate' to allow merge on this variable with the OWID dataset


**Load** 📠
 
We then loaded our DateFrames into PostgreSQL. We used  a relational database, rather than a non-relational database (e.g. such as MongoDB) because we wanted to load our data into a fixed data template, visualise and manage the table easily.


![connecting to db](https://user-images.githubusercontent.com/115706722/214947386-026b1d87-4909-4f10-ad7a-b977c8ab8150.png)
 
![SQL table](https://user-images.githubusercontent.com/115706722/214947406-8f8210da-ce72-4afe-a4d8-e781cda1da9d.png)

## <a id="dependencies-header"></a>Dependencies and Setup Required

* jupyter notebook `pip install notebook`
* pandas `pip install pandas`

- import **pandas** as **pd**
- import **numpy** as **np**
- import **matplotlib.pyplot** as **plt**
- from **sqlalchemy** import **create_engine**

You will also need to insert your own password for PgAdmin to enable you use SQL


## <a id="file-header"></a>**File Guide**

 - Kaggle covid data -  all_weekly_excess_deaths.csv
 - Our World in data - owid-covid-data.csv
 - Loading, extracting and cleaning data - within ipynb_checkpoints folder --> ETL_updated.ipynb
 - SQL schema - table_schema.sql
 
## <a id="notes-header"></a>**Notes/References**


[1] Dave D. (2022). Kaggle.com. https://www.kaggle.com/datasets/dhruvildave/covid19-deaths-dataset (accessed 24/1/2023)  
[2] Mathieu E., Ritchie H., Rodés-Guirao L., et al. (2023). Coronavirus (COVID-19) Cases. ourworldindata.org. https://ourworldindata.org/covid-cases (accessed 24/1/2023).


## <a id="team-header"></a> Team
[Ahmed Abdullahi](https://github.com/Ahmedabdullahi1),
[Gussie Poole](https://github.com/gussiepoole),
[Kareem](https://github.com/a-kareem),
[Fazeleh Arjmandilari](https://github.com/FazelehA)

