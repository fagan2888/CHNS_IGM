use "C:\Users\Yuheng Wang\Desktop\CHNS\Master_ID_201804\Master_ID_201804\surveys_pub_12.sas7bdat .dta" 
br
br age if age > 14 & age < 18 & wave == 2004
count if age > 14 & age < 18 & wave == 2004
count if (age > 14 & age < 18 & wave == 2004) | (age>25&age<29&wave==2015)
egen repeat = count(Idind)
br
drop repeat
bysort Idind : egen ID_count = count(Idind)
br ID_count
count if (age > 14 & age < 18 & wave == 2004) & (ID_count > 4)
tab ID_count if age > 14 & age < 18 & wave == 2004
bysort Idind : egen latest = max(wave)
tab latest if age > 14 & age < 18 & wave == 2004
