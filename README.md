# MechaCar_Statistical_Analysis

### Linear Regression to Predict MPG

![linear_regression](https://github.com/benclark62/MechaCar_Statistical_Analysis/blob/main/Regression_summary.png)

*Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?*
- vehicle_length (p-value = 2.60e-12)
- ground_clearance (5.21e-08)

*Is the slope of the linear model considered to be zero? Why or why not?*
- No, with multiple variables having significant relationships and a p-value much smaller than generally accepted significance level of 0.05 (5.35e-11), the linear model does not have a slope of zero.

*Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?*
- The variables included in this model can predict 71.5% of MPG variance (R-squared = 0.7149).  This is effective, but additional variables could improve its predictive accuracy. 

### Summary Statistics on Suspension Coil

*The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?*

- For all manufacturing lots (total_summary.png), the output data does meet the standard of <100 pounds per square inch of variance.  The reported variance falls within that specification (62.29) and the standard deviation of 7.89 implies that >99.7% of observations would fall within that requirement with normal distribution assumptions. 

![total_summary](https://github.com/benclark62/MechaCar_Statistical_Analysis/blob/main/total_summary.png)

- Lot 1 and Lot 2 also meet the variance requirement (0.979 and 4.769, respectively), while Lot 3 does not (170.28).  Additional research would be required to understand the output differences by lot.

![lot_summary](https://github.com/benclark62/MechaCar_Statistical_Analysis/blob/main/lot_summary.png)

### T-tests on Suspension Coils

*Briefly summarize your interpretation and findings for the t-test results.*

- **Lot1 T-test** - the Lot1 sample data is statistically identical to the population data (means for both = 1500.0, t-value = 0, p-value = 1)

![lot1_ttest](https://github.com/benclark62/MechaCar_Statistical_Analysis/blob/main/lot1_ttest.png)

- **Lot2 T-test** - while there is more difference than in Lot1, the Lot2 sample data does not provide sufficient evidence to reject the null hypothesis (p-value > 0.05 standard), therefore the sample and population means are considered statistically similar.  (t-value = 0.517, p-value = 0.6072) 

![lot2_ttest](https://github.com/benclark62/MechaCar_Statistical_Analysis/blob/main/lot2_ttest.png)

- **Lot3 T-tests** - Based on a p-value < than the standard for statistical significance (0.04168 compared to 0.05), Lot3 is statistically different than the population mean.

![lot3_ttest](https://github.com/benclark62/MechaCar_Statistical_Analysis/blob/main/lot3_ttest.png)

### Study Design: MechaCar vs Competition

*Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.*

- Quantifying the differences between automobiles is an important component when setting prices, determining marketing messages, and projecting the long-term viability of a product.  The first step is identifying the relevant set of comparable automobiles to compare against to ensure that we are benchmarking against cars that consumers view as comparable.  In this case, MechaCar will focus on low total lifetime cost of ownership, specifically variable post-purchase costs, and will be compared to other similar low-price cars.

*In your description, address the following questions:*

*What metric or metrics are you going to test?*
- Long-term maintenance costs (i.e. frequency of oil changes required, repair costs per mile driven)
- Fuel economy (city and highway miles per gallon)

*What is the null hypothesis or alternative hypothesis?*
- Null Hypothesis: there is no statistical difference in the total lifetime cost of ownership for a MechaCar compared to its peer group of low-price automobiles.
- Alternative Hypothesis: MechaCar is significantly less expensive to own than its peer group of low-price automobiles.

*What statistical test would you use to test the hypothesis? And why?*
- Two-sample T-tests in order to test the difference in MechaCar's sample results and the sample results of key competitors.
- We would not have access to true population means, so would rely on the two-sample T-test to compare the two samples.

*What data is needed to run the statistical test?*
- Observed results for miles per gallon (MPG) performance for MechaCar and its competition
- Multiple years' worth of maintenance costs for MechaCar and its competition
- Multiple years' worth of break / repair rates for MechaCar and its competition
