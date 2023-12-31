pie_bubbles<-function(xpos,ypos,radii,sectors, 
                      sector_col=NULL,main="",xlab="",ylab="") { 
  xlim<-c(min(xpos-radii),max(xpos+radii)) 
  ylim<-c(min(ypos-radii),max(ypos+radii)) 
  nbubbles<-length(xpos) 
  if(is.null(sector_col)) { 
    sector_col<-list() 
    for(scol in 1:nbubbles) 
      sector_col[[scol]]<-rainbow(length(sectors[[scol]]))
  } 
  plot(0,xlim=xlim,ylim=ylim,type="n", 
       main=main,xlab=xlab,ylab=ylab) 
  for(bubble in 1:nbubbles) 
    floating.pie(xpos=xpos[bubble],ypos=ypos[bubble], 
                 x=sectors[[bubble]],radius=radii[bubble], 
                 col=c("#D7191C","#FDAE61","#4575B4","#91BFDB"))
} 

pdf("Fig2E.pdf",w=12,h=12)

#raw data for Fig. 2E
xpos<-c(28,28,28,28,1,2,3,5,4,26,11,7,9,4,1,5,4,5,6,9,23,10,7,8,9,14,18,22,19,10,13,16,26,5,21,10,11,12,6,9,21,7,13,14,15,7,9,18,11,4,6,19,10,22,3,5,16,17,8,14,22,7,20,10,9,24,19,18,21,26,18,19,20,16,14,22,13,24,7,11,25,26,7,21,22,14,9,16,25,23,24,25,16,7,26,9,22,25,24,23,16,7,26,9,22,14,26,16,7,24,23,22,21,11,9)
ypos<-c(1,3,5,7,12,12,12,12,12,12,12,12,12,11,11,11,10,10,10,10,10,10,9,9,9,9,9,9,9,9,9,9,9,9,9,8,8,8,8,8,8,8,7,7,7,7,7,7,7,7,7,7,7,7,7,7,6,6,6,6,6,6,6,6,6,6,6,6,6,6,5,5,5,5,5,5,5,5,5,5,5,5,4,4,4,4,4,4,4,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1)
radii<-c(0.7111,0.5333,0.3556,0.1778,0.1505,0.086,0.0796,0.0767,0.0416,0.0373,0.0143,0.0057,0.0022,0.7372,0.0839,0.0666,0.4789,0.3528,0.0473,0.0083,0.0004,0.0004,0.1357,0.1107,0.0954,0.0738,0.0653,0.0585,0.0579,0.0375,0.0119,0.0017,0.0017,0.0006,0.0006,0.1982,0.186,0.1236,0.0685,0.0439,0.0434,0.0056,0.5085,0.0551,0.053,0.0085,0.0042,0.0042,0.0032,0.0021,0.0021,0.0021,0.0011,0.0011,0.0011,0.0011,0.1555,0.0866,0.072,0.0553,0.0501,0.0396,0.0365,0.0261,0.0073,0.0063,0.0063,0.0052,0.0031,0.0021,0.4106,0.1224,0.056,0.0552,0.0506,0.0319,0.0025,0.0021,0.0008,0.0008,0.0008,0.0004,0.7657,0.0406,0.0234,0.0095,0.0004,0.0002,0.0002,0.241,0.2377,0.2064,0.0196,0.0104,0.0046,0.0013,0.0013,0.2939,0.2323,0.1749,0.0143,0.005,0.005,0.0007,0.0007,0.1845,0.1108,0.099,0.0757,0.0288,0.0279,0.0151,0.0029,0.0023,0.0003)
sectors<-list(c(1,0,0,0),c(1,0,0,0),c(1,0,0,0),c(1,0,0,0),c(208,0,0,2),c(120,0,0,0),c(111,0,0,0),c(107,0,0,0),c(58,0,0,0),c(52,0,0,0),c(20,0,0,0),c(8,0,0,0),c(3,0,0,0),c(1689,81,3,20),c(204,0,0,0),c(139,21,0,2),c(1122,71,3,19),c(773,112,0,10),c(113,7,0,0),c(21,0,0,0),c(0,0,0,1),c(1,0,0,0),c(46,26,129,38),c(42,46,64,43),c(42,73,18,35),c(21,24,66,19),c(17,23,54,21),c(24,19,22,38),c(20,11,46,25),c(7,37,6,16),c(1,0,17,3),c(0,0,3,0),c(3,0,0,0),c(0,0,0,1),c(0,1,0,0),c(102,128,68,90),c(149,118,38,59),c(83,69,37,53),c(65,6,21,42),c(33,33,11,9),c(42,8,16,19),c(5,4,2,0),c(284,109,30,57),c(3,8,34,7),c(22,18,2,8),c(6,1,1,0),c(1,1,2,0),c(1,3,0,0),c(1,0,1,1),c(0,1,0,1),c(0,1,1,0),c(0,1,1,0),c(0,0,1,0),c(0,1,0,0),c(1,0,0,0),c(1,0,0,0),c(1,1,143,4),c(3,11,54,15),c(1,2,57,9),c(2,0,48,3),c(5,3,36,4),c(5,0,28,5),c(0,0,30,5),c(1,5,17,2),c(0,0,3,4),c(0,0,4,2),c(5,0,0,1),c(0,0,5,0),c(0,0,3,0),c(0,0,1,1),c(5,0,960,25),c(3,0,284,8),c(3,0,126,6),c(3,1,122,7),c(12,2,96,12),c(3,0,67,7),c(1,1,3,1),c(0,2,2,1),c(0,0,1,1),c(0,0,2,0),c(0,0,2,0),c(0,0,1,0),c(8,5,3529,94),c(0,0,186,7),c(0,2,102,7),c(2,0,38,5),c(1,0,1,0),c(0,0,1,0),c(0,0,1,0),c(51,3,32,283),c(38,4,17,305),c(50,6,53,207),c(10,1,1,18),c(1,0,2,13),c(2,0,2,3),c(0,0,0,2),c(0,0,2,0),c(58,7,78,267),c(33,4,15,272),c(32,3,23,186),c(7,1,1,11),c(0,0,1,6),c(2,0,1,4),c(0,0,0,1),c(0,0,1,0),c(24,11,412,116),c(17,9,267,45),c(23,5,186,88),c(12,60,108,51),c(16,3,9,60),c(6,0,10,69),c(17,0,19,10),c(1,1,1,6),c(1,0,6,0),c(0,0,1,0))

library(plotrix)
pie_bubbles(xpos,ypos,radii,sectors,main="Pie bubbles")
dev.off()

