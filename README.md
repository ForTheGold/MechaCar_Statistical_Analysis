# MechaCar ProtoTypes Using RStudio

Using data from a prototype in the automotive industry to gain an understanding of statistics and predictive analysis using R

## MechaCar

MechaCar is having some issues with their production and manufacturing.  They have called in a statistician who is proficient in R programming in order to find the root cause of their problems so that they may make their dream car.  Here are the statistical tests and the technical report created from the MechaCar data.

### Background

Our team was given two complete datasets including one that includes different design specifications such as vehicle length and weight, ground clearance, miles per gallon, etc., and the other consists of coil suspension test results from different manufacturing lots.  The coils in the coil suspension tests test the weight capacity of different prototypes.

We are creating a technical report to justify design decisions with statistical analysis and reasoning.  Here is a snippet of our results in R Studio.

![Code Snippet](https://github.com/ForTheGold/MechaCar_Statistical_Analysis/blob/main/Resources/codesnippet.png)

### Test 1

I performed a multiple regression analysis on the MPG data for the MechaCar prototypes which produced the following results.

![Results](https://github.com/ForTheGold/MechaCar_Statistical_Analysis/blob/main/Resources/result.png)

Legend
Purple: Slopes
Light Blue: Individual p-values
Pink: Combined p-values
Orange: R-Squared values

The intercept p-value shows us that the amount of variance that we are experiencing is non random in for the whole of the data and then we can zoom in on which of the factors are contributors.  Vehicle weight, spoiler angle and AWD all have p-values large enough that it seems that they could be predicted by random chance, leaving only vehicle length and ground clearance as the most likely contributors to the MPG usage.  Further analysis should be done on these two factors.

Combining the regression slope and the y-intercept we find the distance between each data point in the graph.  It turns out that slope is non zero.  If we assume a significance level of 0.05% we can look at our p-value of 5.35e-11 giving us more than enough grounds to reject the null hypothesis

Additionally, when we have a look at our R-squared value, we see that it is .71 meaning that 71% of our predictions will be correct.  That combined with our low p-value mean that our model is effective at predicting MechaCar Prototypes.

## Test 2

Here are the results of the entire test from test two.
 
![Results2](https://github.com/ForTheGold/MechaCar_Statistical_Analysis/blob/main/Resources/result2.png)

The manufacturers were looking for a variance less than 100 pounds per square inch (PSI) of the suspension cables.  We can see that it is only 62.3 meeting this requirement.

Here are the results by lot from test two.

![Results3](https://github.com/ForTheGold/MechaCar_Statistical_Analysis/blob/main/Resources/result3.png)

These results show that actually the prototypes from lots one and two far exceed the manufacturer specifications and should be kept, while the results of lot three do not meet the manufacturer specifications and should be rejected.

## Test 3

Here are the results of the final test.

![Results4](https://github.com/ForTheGold/MechaCar_Statistical_Analysis/blob/main/Resources/result4.png)

Assuming once again that we use a significance level of 0.05%, we can see that lots 1 and 2 are sure confident in the true mean with p-values of 1 and 0.61 respectively, but we can not be confident in the true mean of lot 3 with a p-value of 0.04.

## Further Research

The next step would be to design a study to compare MechaCar with the competition.  I believe that fuel efficiency is one of the major factors that go into consumer decision making these days with people becoming more conscious of their footprint on the environment.

MechaCar could test out how they measure up against the competition by creating a statistical test.  The null hypothesis would be that MechaCar cars have the same or worse efficiency as competitors, and the alternative hypothesis would be that we are better.  We could use the MPG data that we already have and would need to collect further MPG data of competitors we are trying to beat out.  We would be looking for a positive delta change showing that MechaCar is more efficient than competitors.

MechaCar should look to their shorter cars with low ground clearance as we have already shown that these have maximum fuel efficiency.  
