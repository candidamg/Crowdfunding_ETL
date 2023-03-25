# Crowdfunding_ETL

On this project we analyze the data from the crowdfunding xlsx file. 
There are eight different types of categories and twenty-three of subcategorys in the data. The category information was exported as category.csv file and the subcategory as subcategory.csv file. 

Next, we create a copy of the cleaned crowfunding dataframe into a new dataframe named campaing_df. We proceeded to clean the dataframe by naming properly the columns and converting the goal and pledged columns to float type. Additionally the launch_date and end_date were formated as date time type. 

Both merged_df and campaing_merged_df were merged into a single dataframe. After dropping the not necessary columns the dataframe was exported and named campaign.csv. 

For contacts CSV file both options were completed by usnig dataframes and regex. 
