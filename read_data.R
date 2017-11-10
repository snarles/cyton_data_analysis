# 1 grey  F3
# 2 purpl FZ
# 3 blue  F4
# 4 green C3
# 5 yello CZ
# 6 orang C4
# 7 red   O1
# 8 brown I2

head(read.table("OpenBCI-RAW-EyesOpen.txt", skip = 6, sep = ",")) # 14:57:32.796
head(read.table("OpenBCI-RAW-EyesOpenMeditate.txt", skip = 6, sep = ",")) # 15:37

####
##  Eyes Closed meditate
####

tab0 <- read.table(file = "EyesClosed.txt", skip = 6, sep = ",")
dim(tab0) # [1] 11422    13
tab1 <- read.table(file = "EyesClosed (2).txt", skip = 6, sep = ",")
dim(tab1) # [1] 153309     13
cm_tab <- rbind(tab0, tab1)
for (i in 2:9) {
  plot(cm_tab[,i], type = "l", main = paste(i - 1)); abline(v = ncol(tab1), col = "red")
}



####
##  Eyes Closed Audio
####
cn_tab <- read.table(file = "OpenBCI-RAW-EyesClosedAudio.txt", skip = 6, sep = ",")
dim(cn_tab) # [1] 185345     13
for (i in 2:9) plot(cn_tab[,i], type = "l", main = paste(i - 1))

i <- 8;plot(cn_tab[,i], type = "l", main = paste(i - 1), ylim = c(-65000,-60000))

####
##  Eyes Open
####

tab0 <- read.table(file = "OpenBCI-RAW-2017-11-09_14-58-55.txt", skip = 6, sep = ",")
dim(tab0) #131695     13
tab1 <- read.table(file = "OpenBCI-RAW-2017-11-09_15-09-17.txt", skip = 6, sep = ",")
dim(tab1) #105693     13
for (i in 2:9) plot(tab0[1:130000,i], type = "l", main = paste(i - 1))
for (i in 2:9) plot(tab1[,i], type = "l", main = paste(i - 1))
en_tab <- tab0

####
##  Eyes Open Meditation
####

em_tab <- read.table(file = "OpenBCI-RAW-2017-11-09_15-38-15.txt", skip = 6, sep = ",")
dim(em_tab) #123703     13
for (i in 2:9) plot(em_tab[1:120000,i], type = "l", main = paste(i - 1))
