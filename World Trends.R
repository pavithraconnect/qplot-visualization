#read csv file

#first df

getwd()
#set working directory if needed
df1<-read.csv("Section5-Homework-Data.csv")
f1<-df1[df1$Year==1960,]
f2<-df1[df1$Year==2013,]

#secobd df
df2<-data.frame(Code=Country_Code ,Y1960=Life_Expectancy_At_Birth_1960)
df3<-data.frame(Code=Country_Code, Y2013=Life_Expectancy_At_Birth_2013)

head(f1)
head(df2)
head(df3)

# merge 1960

m1960<-merge(f1,df2,by.x = "Country.Code",by.y = "Code")

#merge 2013

m2013<-merge(f2,df3,by.x = "Country.Code",by.y = "Code")

# plot 1960
head(m1960)
qplot(data = m1960,x=Fertility.Rate,y=Y1960,size=I(4),
      color=Region, alpha=I(0.5),
      main= "Fertility rate vs Life expectancy in 1960")

# plot 2013
head(m2013)
qplot(data = m2013,x=Fertility.Rate,y=Y2013,size=I(4),
      color=Region, alpha=I(0.5),
      main= "Fertility rate vs Life expectancy in 2013")


