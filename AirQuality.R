#load libraries
  library(plotly)
  library(ggplot2)
  
#Name Variables
  
  Conc=AirQualityData$Concentration
  Region=AirQualityData$Region
  
#Line Plots

  #BC
  lineBC=plot_ly(AirQualityData, x=~Year, y=~BritishColumbia, name='British Columbia', type = 'scatter', mode = 'lines',
                line = list(color = '#66bd63', width = 1)) %>%
    add_trace(linep, y=~PairiesandNorthernOntario, name="Prairies and Northern Ontario", line=list(color='#3288bd', width = 1), visible = 'legendonly') %>%
    add_trace(linep, y=~SouthernOntario, name="Southern Ontario", line=list(color='#f4a582', width = 1), visible='legendonly') %>%
    add_trace(linep, y=~SouthernQuebec, name="Southern Quebec", line=list(color='#003c30', width = 1), visible= 'legendonly') %>%
    add_trace(linep, y = ~AltlanticCanada, name = 'Atlantic Canada', line = list(color = '#9e0142', width = 1), visible="legendonly") %>% 
    add_trace(linep, y=~  Average, name="National Average", line=list(color='black', width = 4), visible="legendonly") %>% 
    layout(yaxis=list(title="Concentration (??g/m?)", range=c(3.5, 10.4)),annotations = list(), xaxis = list(title=""), legend=list(x=100, y=0.5))
  lineBC
  #BC+PNO
  line2=plot_ly(AirQualityData, x=~Year, y=~BritishColumbia, name='British Columbia', type = 'scatter', mode = 'lines',
                 line = list(color = '#66bd63', width = 1)) %>%
    add_trace(linep, y=~PairiesandNorthernOntario, name="Prairies and Northern Ontario", line=list(color='#3288bd', width = 1)) %>%
    add_trace(linep, y=~SouthernOntario, name="Southern Ontario", line=list(color='#f4a582', width = 1), visible='legendonly') %>%
    add_trace(linep, y=~SouthernQuebec, name="Southern Quebec", line=list(color='#003c30', width = 1), visible= 'legendonly') %>%
    add_trace(linep, y = ~AltlanticCanada, name = 'Atlantic Canada', line = list(color = '#9e0142', width = 1), visible="legendonly") %>% 
    add_trace(linep, y=~  Average, name="National Average", line=list(color='black', width = 4), visible="legendonly") %>% 
    layout(yaxis=list(title="Concentration (??g/m?)", range=c(3.5, 10.4)),annotations = list(), xaxis = list(title=""), legend=list(x=100, y=0.5))
  line2
  #BC+PNO+SO
  line3=plot_ly(AirQualityData, x=~Year, y=~BritishColumbia, name='British Columbia', type = 'scatter', mode = 'lines',
                line = list(color = '#66bd63', width = 1)) %>%
    add_trace(linep, y=~PairiesandNorthernOntario, name="Prairies and Northern Ontario", line=list(color='#3288bd', width = 1)) %>%
    add_trace(linep, y=~SouthernOntario, name="Southern Ontario", line=list(color='#f4a582', width = 1)) %>%
    add_trace(linep, y=~SouthernQuebec, name="Southern Quebec", line=list(color='#003c30', width = 1), visible= 'legendonly') %>%
    add_trace(linep, y = ~AltlanticCanada, name = 'Atlantic Canada', line = list(color = '#9e0142', width = 1), visible="legendonly") %>% 
    add_trace(linep, y=~  Average, name="National Average", line=list(color='black', width = 4), visible="legendonly") %>% 
    layout(yaxis=list(title="Concentration (??g/m?)", range=c(3.5,10.4)),annotations = list(), xaxis = list(title=""), legend=list(x=100, y=0.5))
  line3  
  #BC+PNO+SO+SQ
  line4=plot_ly(AirQualityData, x=~Year, y=~BritishColumbia, name='British Columbia', type = 'scatter', mode = 'lines',
                line = list(color = '#66bd63', width = 1)) %>%
    add_trace(linep, y=~PairiesandNorthernOntario, name="Prairies and Northern Ontario", line=list(color='#3288bd', width = 1)) %>%
    add_trace(linep, y=~SouthernOntario, name="Southern Ontario", line=list(color='#f4a582', width = 1)) %>%
    add_trace(linep, y=~SouthernQuebec, name="Southern Quebec", line=list(color='#003c30', width = 1)) %>%
    add_trace(linep, y = ~AltlanticCanada, name = 'Atlantic Canada', line = list(color = '#9e0142', width = 1), visible="legendonly") %>% 
    add_trace(linep, y=~  Average, name="National Average", line=list(color='black', width = 4), visible="legendonly") %>% 
    layout(yaxis=list(title="Concentration (??g/m?)", range=c(3.5,10.4)),annotations = list(), xaxis = list(title=""), legend=list(x=100, y=0.5))
  line4  
  #BC+PNO+SO+SQ+AC
  line5=plot_ly(AirQualityData, x=~Year, y=~BritishColumbia, name='British Columbia', type = 'scatter', mode = 'lines',
                line = list(color = '#66bd63', width = 1)) %>%
    add_trace(linep, y=~PairiesandNorthernOntario, name="Prairies and Northern Ontario", line=list(color='#3288bd', width = 1)) %>%
    add_trace(linep, y=~SouthernOntario, name="Southern Ontario", line=list(color='#f4a582', width = 1)) %>%
    add_trace(linep, y=~SouthernQuebec, name="Southern Quebec", line=list(color='#003c30', width = 1)) %>%
    add_trace(linep, y = ~AltlanticCanada, name = 'Atlantic Canada', line = list(color = '#9e0142', width = 1)) %>% 
    add_trace(linep, y=~  Average, name="National Average", line=list(color='black', width = 4), visible="legendonly") %>% 
    layout(yaxis=list(title="Concentration (??g/m?)", range=c(3.5, 10.4)),annotations = list(), xaxis = list(title=""), legend=list(x=100, y=0.5))
  line5
  #BC+PNO+SO+SQ+AC+NA
  line6=plot_ly(AirQualityData, x=~Year, y=~BritishColumbia, name='British Columbia', type = 'scatter', mode = 'lines',
                line = list(color = '#66bd63', width = 1)) %>%
    add_trace(linep, y=~PairiesandNorthernOntario, name="Prairies and Northern Ontario", line=list(color='#3288bd', width = 1)) %>%
    add_trace(linep, y=~SouthernOntario, name="Southern Ontario", line=list(color='#f4a582', width = 1)) %>%
    add_trace(linep, y=~SouthernQuebec, name="Southern Quebec", line=list(color='#003c30', width = 1)) %>%
    add_trace(linep, y = ~AltlanticCanada, name = 'Atlantic Canada', line = list(color = '#9e0142', width = 1)) %>% 
    add_trace(linep, y=~  Average, name="National Average", line=list(color='black', width = 4)) %>% 
    layout(yaxis=list(title="Concentration (??g/m?)", range=c(3.5, 10.4)),annotations = list(), xaxis = list(title=""), legend=list(x=100, y=0.5))
  line6
  #NA
  line7=plot_ly(AirQualityData, x=~Year, y=~BritishColumbia, name='British Columbia', type = 'scatter', mode = 'lines',
                line = list(color = '#e0e0e0', width = 1)) %>%
    add_trace(linep, y=~PairiesandNorthernOntario, name="Prairies and Northern Ontario", line=list(color='#e0e0e0', width = 1)) %>%
    add_trace(linep, y=~SouthernOntario, name="Southern Ontario", line=list(color='#e0e0e0', width = 1)) %>%
    add_trace(linep, y=~SouthernQuebec, name="Southern Quebec", line=list(color='#e0e0e0', width = 1)) %>%
    add_trace(linep, y = ~AltlanticCanada, name = 'Atlantic Canada', line = list(color = '#e0e0e0', width = 1)) %>% 
    add_trace(linep, y=~  Average, name="National Average", line=list(color='black', width = 4)) %>% 
    layout(yaxis=list(title="Concentration (??g/m?)", range=c(3.5, 10.4)),annotations = list(), xaxis = list(title=""), legend=list(x=100, y=0.5))
  line7

#Is there a difference in air quality between regions?
  
  AirQualityDataLong$Region=as.factor(AirQualityDataLong$Region)
  AirQualityDataLong$Region <- factor(AirQualityDataLong$Region,
        levels = c('British Columbia','Prairies and Northern Ontario', 'Southern Ontario', 'Southern Quebec', "Atlantic Canada"),ordered = TRUE)
  #linear model fit into an aov to make conform to Tukey's post-hoc requirements
  model=lm(AirQualityDataLong$Concentration~as.factor(AirQualityDataLong$Region))
  ANOVA=aov(model)
  summary(ANOVA)
  TukTest=TukeyHSD(aov(Concentration~as.factor(Region), AirQualityDataLong))
  TukTest
    #Tukey multiple comparisons of means
    #95% family-wise confidence level
    
    #Fit: aov(formula = Concentration ~ as.factor(Region), data = AirQualityDataLong)
    
    #$`as.factor(Region)`
    #diff        lwr        upr     p adj
    #Prairies and Northern Ontario-British Columbia -0.1466667 -1.2113188  0.9179855 0.9952029
    #Southern Ontario-British Columbia               1.3400000  0.2753479  2.4046521 0.0065510
    #Southern Quebec-British Columbia                3.1200000  2.0553479  4.1846521 0.0000000
    #Atlantic Canada-British Columbia               -0.9466667 -2.0113188  0.1179855 0.1046509
    #Southern Ontario-Prairies and Northern Ontario  1.4866667  0.4220145  2.5513188 0.0019153
    #Southern Quebec-Prairies and Northern Ontario   3.2666667  2.2020145  4.3313188 0.0000000
    #Atlantic Canada-Prairies and Northern Ontario  -0.8000000 -1.8646521  0.2646521 0.2299641
    #Southern Quebec-Southern Ontario                1.7800000  0.7153479  2.8446521 0.0001291
    #Atlantic Canada-Southern Ontario               -2.2866667 -3.3513188 -1.2220145 0.0000007
    #Atlantic Canada-Southern Quebec                -4.0666667 -5.1313188 -3.0020145 0.0000000

#Box Plot
  aqcol=c("#1a1a1a", "#1a1a1a", "#1f78b4", "#b2182b", "#1a1a1a")
  
  aqregion=ggplot(AirQualityDataLong, aes(x=Region, y=Concentration))+geom_point(colour="white")+
    stat_summary(fun.y=mean, geom='point', size=5, shape=15, col=aqcol)+
    stat_summary(fun.data = mean_cl_normal, geom = "errorbar", width=0.1, size=0.5, col=aqcol)+
    theme_classic(base_size=16)+ylab("Fine particulate matter concentration (??g/m?)")+xlab("")+
    annotate("text", x = 4, y = 9.8, label = "c")+
    annotate("text", x = 1, y = 6.5, label = "a")+
    annotate("text", x = 2, y = 6.85, label = "a")+
    annotate("text", x = 3, y = 8.1, label = "b")+
    annotate("text", x = 5, y = 5.5, label = "a")
  aqregion
  
#Does air quality in the regions change over time?
  
  model2=lm(AirQualityDataLong$Concentration~as.factor(AirQualityDataLong$Region)*AirQualityDataLong$Year)
  summary(model2)
      #Call:
      #  lm(formula = AirQualityDataLong$Concentration ~ as.factor(AirQualityDataLong$Region) * AirQualityDataLong$Year)
      
      #Residuals:
      #  Min       1Q   Median       3Q      Max 
      #-1.64905 -0.54524  0.07881  0.52143  2.07690 
      #
      #Coefficients:
      #  Estimate Std. Error t value Pr(>|t|)   
      #(Intercept)                                                                               -1.770e+02  1.068e+02  -1.657  0.10233   
      #as.factor(AirQualityDataLong$Region)British Columbia                                       2.339e+02  1.511e+02   1.548  0.12647   
      #as.factor(AirQualityDataLong$Region)Prairies and Northern Ontario                         -2.830e+02  1.511e+02  -1.873  0.06552 . 
      #as.factor(AirQualityDataLong$Region)Southern Ontario                                       4.496e+02  1.511e+02   2.975  0.00411 **
      #  as.factor(AirQualityDataLong$Region)Southern Quebec                                        2.270e+01  1.511e+02   0.150  0.88103   
      #AirQualityDataLong$Year                                                                    9.071e-02  5.323e-02   1.704  0.09314 . 
      #as.factor(AirQualityDataLong$Region)British Columbia:AirQualityDataLong$Year              -1.161e-01  7.528e-02  -1.542  0.12798   
      #as.factor(AirQualityDataLong$Region)Prairies and Northern Ontario:AirQualityDataLong$Year  1.414e-01  7.528e-02   1.879  0.06478 . 
      #as.factor(AirQualityDataLong$Region)Southern Ontario:AirQualityDataLong$Year              -2.229e-01  7.528e-02  -2.960  0.00429 **
      #  as.factor(AirQualityDataLong$Region)Southern Quebec:AirQualityDataLong$Year               -9.286e-03  7.528e-02  -0.123  0.90222   
      #---
      #  Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
      
      #Residual standard error: 0.8908 on 65 degrees of freedom
      #Multiple R-squared:  0.7744,	Adjusted R-squared:  0.7432 
      #F-statistic: 24.79 on 9 and 65 DF,  p-value: < 2.2e-16
  
  #Significance in Southern Ontario:Year, let's explore more.
    SOonly=subset(AirQualityDataLong, Region=="Southern Ontario")
      head(SOonly)  
      SOp=ggplot(SOonly, aes(x=SOonly$Year, y=SOonly$Concentration))+geom_point(colour="#1f78b4", size=2, shape=16)+theme_classic(base_size=16)+
          stat_smooth(method="lm",formula = y ~ poly(x, 3), colour='black', fill="#d9d9d9")+
          ylab("Southern Ontario fine particulate matter concentration (??g/m?)")+xlab("")+xlim(c(2000, 2015))+ylim(c(5, 10))+
          annotate("text", x=2013, y=9.5, label = "t=-2.960 \n p=0.004  ")
      SOp 
    #this ln_eqn will add the r^2 to the graph, calculated from the stat_smooth cubic polynomical LOBF  
      lm_eqn = function(m) {
          
          l <- list(a = format(coef(m)[1], digits = 2),
                    b = format(abs(coef(m)[2]), digits = 2),
                    r2 = format(summary(m)$r.squared, digits = 3));
          
          if (coef(m)[2] >= 0)  {
            eq <- substitute(italic(y) == a + b %.% italic(x)*","~~italic(r)^2~"="~r2,l)
          } else {
            eq <- substitute(italic(r)^2~"="~r2,l)    
          }
          
          as.character(as.expression(eq));                 
        }
        m=lm(SOonly$Concentration~poly(SOonly$Year,2))
        m
        SOp1=SOp+annotate("text", x=2013, y=9.23, label=lm_eqn(m), parse=TRUE)
        SOp1
        
    #Near significance in PrairiesNO:Year, let's explore more.
    PNOonly=subset(AirQualityDataLong, Region=="Prairies and Northern Ontario")
      PNOp=ggplot(PNOonly, aes(x=Year, y=Concentration))+geom_point(colour="#1f78b4", size=2, shape=16)+theme_classic(base_size=16)+
            ylab("Fine particulate matter concentration (??g/m?)")+xlab("")+xlim(c(2000, 2015))
      PNOp
    