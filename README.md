[![Suggestions&BugReports_Welcome](https://img.shields.io/badge/Suggestions-BugReports-blue)](https://github.com/vvaezian/Popularity-of-Programming-Languages/issues)
[![HitCount](http://hits.dwyl.com/vvaezian/https://githubcom/vvaezian/Popularity-of-Programming-Languages.svg)](http://hits.dwyl.com/vvaezian/https://githubcom/vvaezian/Popularity-of-Programming-Languages)

## Popularity of Programming Languages (Based on Stack Overflow Data)

**To interactively explore the data on a public dashboard click [here](https://metabase.intellimenta.com/public/dashboard/f9b5e04b-9755-489d-9f5d-6adc3e3806fd). To access the dashboard in night-mode click [here](https://metabase.intellimenta.com/public/dashboard/f9b5e04b-9755-489d-9f5d-6adc3e3806fd#theme=night).**

### FAQ
<details><summary>How are the Popularity Index and other measures calculated?</summary>
<p>

For the queries see [queries.md](https://github.com/vvaezian/Popularity-of-Programming-Languages/blob/master/queries.md) file.
  
  - **Popularity Index:** Average of three measures (explained below); Question Count, View Count, and Distinct Users.
  - **Question Count:** For each day the number of posts with the relevant tag is calculated. Then these numbers are summed over the given granularity (Yearly, Quarterly, Monthly).
  - **Average ViewCount:** We have the ViewCount of posts with the relevant tags. Each post's viewcount is divided by the number of days it has been posted, which results in average viewcount of that post. For each day these average ViewCounts are summed, and then these numbers are averaged over the given granularity (Yearly, Quarterly, Monthly).
  - **Average Number of Daily Distinct Users:** In each day the number of distinct users who had an activity in the relevant tags (asked a question/answered a question/commented on a question or answer/edited a question or answer) is calculated. Then these numbers are averaged over the given granularity (Yearly, Quarterly, Monthly).
  - **Total Views:** Total number of views for the questions with the relevant tags (limited to the given timerange). The granularity filter doesn't apply to this card.
  - **Total Question:** Total number of questions with the relevant tags (limited to the given timerange). The granularity filter doesn't apply to this card.

</p></details>

<details><summary>Which tags are used for each programming language?</summary>
<p>

See [tags.md](https://github.com/vvaezian/Popularity-of-Programming-Languages/blob/master/tags.md) file.

</p></details>

### Remarks
- The dashboard gets updated with new data at the beginnig of each month.
- The ViewCount measure is lagging one month behind compared to the other two measures. This is because of the way ViewCount is calculated. More recent data for ViewCount is noisy. One month lag normalizes the data.  
This lag causes the Popularity Index be lagging one month behind as well, because it relies on all three measures.

### Contribution 
If you have a suggestion or you want to report a bug, please create an [issue](https://github.com/vvaezian/Popularity-of-Programming-Languages/issues).
