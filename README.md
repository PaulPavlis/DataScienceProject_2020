# DataScienceProject_2020

Erstellt von Jan-Philipp Steinwender und Paul Pavlis als Abschlussprojekt der Lehrveranstaltung "Data Science" im Bachelor Wirtschaftsinformatik - Semester 5

Um die REST Schnittstelle zu verwenden, muss das main_file.Rmd einmal ausgeführt werden. Denn in dem File werden die Modelle und Variablen erstellt und exportier, die der Server benötigt.
Zusätzlich muss in den Files server_config.R und server_start.R der Pfad angepasst werden.

Beispiele für eine REST-Abfrage inklusive tatsächlichen Wert zum Vergleich:

|                                                                                                        Bsp Befehl                                                                                                        | tatsächliches Ranking |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------|
| `curl -X POST http://localhost:8080/keras --header "Content-Type:application/json" -d "{\"City\":[\"London\",\"London\"],\"Rating\":[\"4\",\"3\"],\"Price_Range\":[\"medium\",\"low\"],\"Review_Count\":[242,32]}"`      | [3400,14881]          |
| `curl -X POST http://localhost:8080/keras --header "Content-Type:application/json" -d "{\"City\":[\"Paris\",\"Paris\"],\"Rating\":[\"3\",\"4.5\"],\"Price_Range\":[\"medium\",\"high\"],\"Review_Count\":[132,111]}"`    | [11114,1212]          |
| `curl -X POST http://localhost:8080/keras --header "Content-Type:application/json" -d "{\"City\":[\"Vienna\",\"Vienna\"],\"Rating\":[\"4\",\"4.5\"],\"Price_Range\":[\"medium\",\"medium\"],\"Review_Count\":[589,15]}"` | [112,2051]            |

verwendete Testdaten: https://www.kaggle.com/damienbeneschi/krakow-ta-restaurans-data-raw
