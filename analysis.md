\# Analysis of Cat Shelter Outcomes



\## Objective

This project analyzes how observable characteristics — specifically \*\*age, breed, and color\*\* — relate to cat shelter outcomes:



\- Adoption  

\- Transfer  

\- Return to Owner  



I also created a combined metric, \*\*good\_outcomes\*\*, representing the share of cats that ended in one of these three positive outcomes.



\---



\## Methodology

Using SQL, I grouped shelter records by:



\- Color  

\- Breed  

\- Age (in years)  



For each group, I calculated:



\- Total animals  

\- Adoption count and rate  

\- Transfer count and rate  

\- Return-to-owner count and rate  

\- Good outcome rate  



To reduce noise, some analyses (e.g., breed) were filtered to groups with more than 30 animals.



\---



Key Findings



Age (Strongest Signal)



Age shows the \*\*clearest relationship with outcomes\*\*.



\### Kittens (Age = 0)

\- Adoption rate: \*\*50.0%\*\*

\- Transfer rate: \*\*44.1%\*\*

\- Return rate: \*\*0.78%\*\*

\- Good outcomes: \*\*94.9%\*\*



Kittens are \*\*overwhelmingly likely to have positive outcomes\*\*, with adoption as the dominant outcome.



\---



\### Young Adults (Age 1–3)

\- Age 1:

&#x20; - Adoption: \*\*33.3%\*\*

&#x20; - Transfer: \*\*55.6%\*\*

\- Age 2:

&#x20; - Adoption: \*\*26.9%\*\*

&#x20; - Transfer: \*\*55.1%\*\*



This group shifts heavily toward \*\*transfer rather than adoption\*\*, suggesting they are less immediately adoptable than kittens.



\---



\### Middle Age (4–10 years)

\- Adoption rates stabilize around \*\*34–45%\*\*

\- Return-to-owner increases (up to \~19%)

\- Transfer rates decline compared to younger cats



This suggests \*\*more balanced outcomes\*\* across categories.



\---



\### Senior Cats (10+ years)

\- Adoption becomes more variable:

&#x20; - Age 11: \*\*60.8% adoption\*\*

&#x20; - Age 10: \*\*35.6% adoption\*\*

\- Return-to-owner increases significantly:

&#x20; - Age 16: \*\*41.2% return rate\*\*



At older ages, \*\*return-to-owner becomes a major outcome driver\*\*, likely reflecting owned pets entering shelters.



\---



\### Very Old Cats (15+ years)

\- Small sample sizes

\- Highly variable results

\- Often high return-to-owner rates



These results are less reliable due to low counts.



\---



Color Insights



Most colors perform similarly, but a few stand out:



\### Strong Performers

\- Chocolate: \*\*52.3% adoption\*\*

\- Flame: \*\*52.2% adoption\*\*

\- Lynx: \*\*49.2% adoption\*\*



These colors show \*\*above-average adoption rates\*\*.



\---



\### Average Cluster

Most common colors fall into a tight band:

\- Adoption: \*\*41–46%\*\*

\- Transfer: \*\*44–46%\*\*

\- Good outcomes: \*\*\~93–94%\*\*



Examples:

\- Blue  

\- Orange  

\- Brown  

\- Black  

\- White  



This suggests \*\*color alone has limited impact\*\* for most cats.



\---



\### Outlier: Gray

\- Adoption rate: \*\*20.4%\*\*

\- Transfer rate: \*\*57.9%\*\*

\- Good outcomes: \*\*85.6%\*\*



Gray cats stand out as:

\- Much less likely to be adopted

\- Much more likely to be transferred



This is the most notable deviation in the color analysis.



\---



Breed Insights



\### Dominant Breed

\- Domestic Shorthair:

&#x20; - Total: \*\*23,720 cats\*\*

&#x20; - Adoption: \*\*42.5%\*\*

&#x20; - Transfer: \*\*46.6%\*\*

&#x20; - Good outcomes: \*\*93.6%\*\*



This breed dominates the dataset and serves as the \*\*baseline\*\*.



\---



\### High Adoption Breeds

\- Manx: \*\*56.3% adoption\*\*

\- Maine Coon: \*\*53.5% adoption\*\*

\- Russian Blue: \*\*50.7% adoption\*\*



These breeds show \*\*above-average adoption rates\*\*, though sample sizes are smaller.



\---



\### High Transfer Breeds

\- American Shorthair:

&#x20; - Transfer rate: \*\*51.2%\*\*



This breed shows a strong tendency toward transfer rather than adoption.



\---



\### High Return-to-Owner Breeds

\- Russian Blue: \*\*21.7% return rate\*\*

\- Himalayan: \*\*18.4% return rate\*\*



These may reflect \*\*higher ownership likelihood prior to intake\*\*.



\---



\### Important Note on Breed

Many high-performing breeds have relatively small sample sizes (e.g., <150 animals), so their results may be less stable than large groups like domestic breeds.



\---



Key Takeaways



1\. \*\*Age is the strongest predictor of outcome\*\*

&#x20;  - Kittens are highly adoptable

&#x20;  - Young adults are more likely to be transferred

&#x20;  - Older cats are more likely to be returned to owners



2\. \*\*Color has limited impact overall\*\*

&#x20;  - Most colors perform similarly

&#x20;  - Gray is a notable exception



3\. \*\*Breed shows some variation but is secondary\*\*

&#x20;  - Domestic breeds dominate the dataset

&#x20;  - Smaller breeds show higher variability due to sample size



4\. \*\*Good outcomes are consistently high\*\*

&#x20;  - Most groups exceed \*\*90% good outcomes\*\*

&#x20;  - Indicates strong overall placement success



\---



Limitations



\- This is a \*\*descriptive analysis\*\*, not causal

\- Small sample sizes affect some categories

\- Missing factors:

&#x20; - health condition

&#x20; - behavior

&#x20; - intake type (stray vs owner surrender)

&#x20; - microchip status

\- Some variables may be correlated (e.g., age and breed)



\---



Conclusion



This analysis demonstrates how SQL can be used to generate interpretable probability tables from real-world data, and how visualization tools like Tableau can highlight meaningful patterns.



While age clearly drives outcomes, breed and color still show measurable variation and can provide additional context when evaluating shelter populations.

