# DataScienceProject_2020

Done by Jan-Philipp Steinwender and Paul Pavlis for the final project in "Data Science" Bachelor Business Informatics - Semester 5

Example for REST call:
curl -X POST http://localhost:8080/keras --header "Content-Type:application/json" -d "{\"City\":[\"London\",\"London\"],\"Rating\":[\"4\",\"3\"],\"Price_Range\":[\"medium\",\"low\"],\"Review_Count\":[242,32]}"
curl -X POST http://localhost:8080/keras --header "Content-Type:application/json" -d "{\"City\":[\"Paris\",\"Paris\"],\"Rating\":[\"3\",\"4.5\"],\"Price_Range\":[\"medium\",\"high\"],\"Review_Count\":[132,111]}"
curl -X POST http://localhost:8080/keras --header "Content-Type:application/json" -d "{\"City\":[\"Vienna\",\"Vienna\"],\"Rating\":[\"4\",\"4.5\"],\"Price_Range\":[\"medium\",\"medium\"],\"Review_Count\":[589,15]}"

Testdata form https://www.kaggle.com/damienbeneschi/krakow-ta-restaurans-data-raw
