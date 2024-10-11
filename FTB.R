library("xlsx")
FTB <- read.csv("G5 edition1.csv")
UKREF<- read.csv("UKREF.csv")
#修改时间类型
library(dplyr)
FTB$Date <- as.Date(FTB$Date, format = "%d/%m/%Y")

#年度E0 19/20
start_date <- as.Date("2019-07-31")
end_date <- as.Date("2020-5-31")

#当年球队名单
unique(FTB[FTB$Div == "E0"& FTB$Date > start_date & FTB$Date < end_date,"HomeTeam"])

#按名单添加身价(这是一个天才循环)
for (i in unique(FTB[FTB$Div == "E0" & FTB$Date > start_date & FTB$Date < end_date,"HomeTeam"])) {
  values_vector <- c(683.75, 1007, 348.75, 334.25, 198.75, 236.55, 71.2, 984, 30.75, 273.58,
                     753.25, 191, 217.1, 506, 69.48, 289.5, 1028, 91.45, 807, 333.75)
  
  value_index <- match(i, unique(FTB[FTB$Div == "E0" & FTB$Date > start_date & FTB$Date < end_date, "HomeTeam"]))
  
  if (!is.na(value_index)) {
    value <- values_vector[value_index]
    
    FTB[FTB$HomeTeam == i & FTB$Div == "E0"& FTB$Date > start_date & FTB$Date < end_date, "HomeValue"] <- value
    FTB[FTB$AwayTeam == i & FTB$Div == "E0"& FTB$Date > start_date & FTB$Date < end_date, "AwayValue"] <- value
  }
}

}

#年度E0 20/21
start_date <- as.Date("2020-07-31")
end_date <- as.Date("2021-5-31")

#当年球队名单
unique(FTB[FTB$Div == "E0"& FTB$Date > start_date & FTB$Date < end_date,"HomeTeam"])

#按名单添加身价(这是一个天才循环)
for (i in unique(FTB[FTB$Div == "E0" & FTB$Date > start_date & FTB$Date < end_date,"HomeTeam"])) {
  values_vector <- c(646.95,167.25,203.05,1009,290.65,141.15,774.55,191.95,154.15,491.05,238.1,
                     770.05,282.8,255.35,889.2,510.7,430.75,450.3,132,3,1004)
  
  value_index <- match(i, unique(FTB[FTB$Div == "E0" & FTB$Date > start_date & FTB$Date < end_date, "HomeTeam"]))
  
  if (!is.na(value_index)) {
    value <- values_vector[value_index]
    
    FTB[FTB$HomeTeam == i & FTB$Div == "E0"& FTB$Date > start_date & FTB$Date < end_date, "HomeValue"] <- value
    FTB[FTB$AwayTeam == i & FTB$Div == "E0"& FTB$Date > start_date & FTB$Date < end_date, "AwayValue"] <- value
  }
}

}

#年度E0 21/22
start_date <- as.Date("2021-07-31")
end_date <- as.Date("2022-5-31")

#当年球队名单
unique(FTB[FTB$Div == "E0"& FTB$Date > start_date & FTB$Date < end_date,"HomeTeam"])

#按名单添加身价(这是一个天才循环)
for (i in unique(FTB[FTB$Div == "E0" & FTB$Date > start_date & FTB$Date < end_date,"HomeTeam"])) {
  values_vector <- c(646.95,167.25,203.05,1009,290.65,141.15,774.55,191.95,154.15,491.05,238.1,
                     770.05,282.8,255.35,889.2,510.7,430.75,450.3,132,3,1004)
  
  value_index <- match(i, unique(FTB[FTB$Div == "E0" & FTB$Date > start_date & FTB$Date < end_date, "HomeTeam"]))
  
  if (!is.na(value_index)) {
    value <- values_vector[value_index]
    
    FTB[FTB$HomeTeam == i & FTB$Div == "E0"& FTB$Date > start_date & FTB$Date < end_date, "HomeValue"] <- value
    FTB[FTB$AwayTeam == i & FTB$Div == "E0"& FTB$Date > start_date & FTB$Date < end_date, "AwayValue"] <- value
  }
}

}