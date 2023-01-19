import pandas as pd
import datetime 
from dateutil.relativedelta import relativedelta

df = pd.read_csv("PythonScripts/unedittedConversionRate.csv")

print(df.iloc[0][0])

startDate = datetime.datetime(1976,1,1)
dateFormat = "%d/%m/%Y"

newDates = [startDate + relativedelta(months=idx) for idx in range(12*50)]

newValues = []
previous = datetime.datetime(1900,1,1)

for x in newDates:
    for y in range(df.shape[0]):
        if( datetime.datetime.strptime(df.iloc[y][0], dateFormat) > x) :
            newValues.append([x.strftime("%d/%m/%Y"), df.iloc[previous][1]])
            print(len(newValues))
            break
        else:
            previous = y

#newValues.append["01/01/2023", 3.50]

newDf = pd.DataFrame(newValues, columns=["Title", "ConversionRate"])

print(newDf)

newDf.to_csv("PythonScripts/edittedConversion.csv", sep=',')