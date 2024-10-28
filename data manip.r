attach(ASSESSMENT_DATA_ONLINE_37_STUDENTS_REVISED)

#Extracting variables
Student_Number <- ASSESSMENT_DATA_ONLINE_37_STUDENTS_REVISED$`Student Number`
Gender <- ASSESSMENT_DATA_ONLINE_37_STUDENTS_REVISED$Gender
Age <- ASSESSMENT_DATA_ONLINE_37_STUDENTS_REVISED$Age
Favorite_Subject <- ASSESSMENT_DATA_ONLINE_37_STUDENTS_REVISED$`Favorite Subject`
Favorite_Color <- ASSESSMENT_DATA_ONLINE_37_STUDENTS_REVISED$`Favorite Color`
Height <- ASSESSMENT_DATA_ONLINE_37_STUDENTS_REVISED$`Height (centimeters)`
Weight <- ASSESSMENT_DATA_ONLINE_37_STUDENTS_REVISED$`Weight (kilograms)`
General_Mathematics <- ASSESSMENT_DATA_ONLINE_37_STUDENTS_REVISED$`General Mathematics`
Statistics_and_Probability <- ASSESSMENT_DATA_ONLINE_37_STUDENTS_REVISED$`Statistics and Probability`
Earth_Science <- ASSESSMENT_DATA_ONLINE_37_STUDENTS_REVISED$`Earth Science`
Media_and_Information_Literacy <- ASSESSMENT_DATA_ONLINE_37_STUDENTS_REVISED$`Media and Information Literacy`

#Data frame Initial
main_dataframe <- data.frame(Student_Number,Gender,Age,Favorite_Subject,Favorite_Color,Height,Weight,General_Mathematics,Statistics_and_Probability,Earth_Science,Media_and_Information_Literacy)

#subsets
#All male who like color red and at least 21 years old.
first_dataframe <- subset(main_dataframe, Gender =='Male' & Favorite_Color =='Red' & Age >=21)
#All male who like color blue and at most 60 kilos.
second_dataframe <- subset(main_dataframe, Gender=='Male' & Favorite_Color=='Blue' & Weight<=60)
#All female who like color yellow and more than 150 cm.
third_dataframe <- subset(main_dataframe, Gender=='Female' & Favorite_Color=='Yellow' & Height>150)
#All female who like Math subject and color green.
fourth_dataframe <- subset(main_dataframe, Gender=='Female' & Favorite_Subject=='Math' & Favorite_Color=='Green')
#All students who like Math and the grade in Gen Math and Statistics and Probability is greater than 95.
fifth_dataframe <- subset(main_dataframe, Favorite_Subject=='Math' & General_Mathematics>95 & Statistics_and_Probability>95)
#All students who like Science and the grade in Physical Science is greater than 95.
sixth_dataframe <- subset(main_dataframe, Favorite_Subject=='Science' & Earth_Science>95)
#All students who like English and the grade in Media and Information Literacy is greater than 95.
seventh_dataframe <- subset(main_dataframe, Favorite_Subject=='English' & Media_and_Information_Literacy>95)

#Matrix
m_value <- 1:20
row_name <- c("Red","Blue","Yellow","Green")
col_name <- c("A","B","C","D","E")
the_matrix <- matrix(m_value, nrow=4, ncol=5, byrow=FALSE, dimnames = list(row_name,col_name))

#Extracting column A, C, D
the_matrix[,c(1,3,4)]
#Extracting row Blue and yellow
the_matrix[c(2,3),]

#list
listahan <- list(a=seq(1,20, length.out=40),b = factor(c("Rex", "BTS", "Cavetown" , "The 1975", "Sud")))
