Tests and Coverage
================
07 October, 2018 16:17:01

This output is created by
[covrpage](https://github.com/yonicd/covrpage).

## Coverage

Coverage summary is created using the
[covr](https://github.com/r-lib/covr)
package.

| Object                                                                            | Coverage (%) |
| :-------------------------------------------------------------------------------- | :----------: |
| ggstatsplot                                                                       |    19.68     |
| [R/combine\_plots.R](../R/combine_plots.R)                                        |     0.00     |
| [R/ggcoefstats.R](../R/ggcoefstats.R)                                             |     0.00     |
| [R/ggcorrmat.R](../R/ggcorrmat.R)                                                 |     0.00     |
| [R/gghistostats.R](../R/gghistostats.R)                                           |     0.00     |
| [R/ggpiestats.R](../R/ggpiestats.R)                                               |     0.00     |
| [R/grouped\_ggbetweenstats.R](../R/grouped_ggbetweenstats.R)                      |     0.00     |
| [R/grouped\_ggcorrmat.R](../R/grouped_ggcorrmat.R)                                |     0.00     |
| [R/grouped\_gghistostats.R](../R/grouped_gghistostats.R)                          |     0.00     |
| [R/grouped\_ggpiestats.R](../R/grouped_ggpiestats.R)                              |     0.00     |
| [R/helpers\_ggcoefstats.R](../R/helpers_ggcoefstats.R)                            |     0.00     |
| [R/helpers\_ggcorrmat.R](../R/helpers_ggcorrmat.R)                                |     0.00     |
| [R/helpers\_gghistostats\_subtitles.R](../R/helpers_gghistostats_subtitles.R)     |     0.00     |
| [R/helpers\_ggpiestats\_subtitles.R](../R/helpers_ggpiestats_subtitles.R)         |     0.00     |
| [R/helpers\_messages.R](../R/helpers_messages.R)                                  |     0.00     |
| [R/helpers\_stats.R](../R/helpers_stats.R)                                        |     0.00     |
| [R/set\_cwd.R](../R/set_cwd.R)                                                    |     0.00     |
| [R/helpers\_ggbetween\_subtitles.R](../R/helpers_ggbetween_subtitles.R)           |    23.17     |
| [R/theme\_ggstatsplot.R](../R/theme_ggstatsplot.R)                                |    29.27     |
| [R/helpers\_ggscatterstats\_subtitles.R](../R/helpers_ggscatterstats_subtitles.R) |    30.77     |
| [R/ggbetweenstats.R](../R/ggbetweenstats.R)                                       |    45.01     |
| [R/grouped\_ggscatterstats.R](../R/grouped_ggscatterstats.R)                      |    45.54     |
| [R/ggscatterstats.R](../R/ggscatterstats.R)                                       |    53.56     |
| [R/helpers\_effsize\_ci.R](../R/helpers_effsize_ci.R)                             |    80.17     |

<br>

## Unit Tests

Unit Test summary is created using the
[testthat](https://github.com/r-lib/testthat)
package.

|                                 | file                                                                      |  n | time | error | failed | skipped | warning |
| ------------------------------- | :------------------------------------------------------------------------ | -: | ---: | ----: | -----: | ------: | ------: |
| test\_anova\_subtitles.R        | [test\_anova\_subtitles.R](testthat/test_anova_subtitles.R)               |  4 | 0.78 |     0 |      0 |       0 |       0 |
| test\_chisq\_v\_ci.R            | [test\_chisq\_v\_ci.R](testthat/test_chisq_v_ci.R)                        | 10 | 2.09 |     0 |      0 |       0 |       0 |
| test\_cor\_test\_ci.R           | [test\_cor\_test\_ci.R](testthat/test_cor_test_ci.R)                      | 12 | 0.45 |     0 |      0 |       0 |       0 |
| test\_ggbetweenstats.R          | [test\_ggbetweenstats.R](testthat/test_ggbetweenstats.R)                  |  1 | 2.53 |     0 |      0 |       1 |       0 |
| test\_grouped\_ggscatterstats.R | [test\_grouped\_ggscatterstats.R](testthat/test_grouped_ggscatterstats.R) |  1 | 0.07 |     0 |      0 |       0 |       0 |
| test\_lm\_effsize\_ci.R         | [test\_lm\_effsize\_ci.R](testthat/test_lm_effsize_ci.R)                  |  9 | 3.28 |     0 |      0 |       0 |       0 |
| test\_robcor\_ci.R              | [test\_robcor\_ci.R](testthat/test_robcor_ci.R)                           |  8 | 0.22 |     0 |      0 |       0 |       0 |
| test\_t\_test\_subtitles.R      | [test\_t\_test\_subtitles.R](testthat/test_t_test_subtitles.R)            |  1 | 0.27 |     0 |      0 |       0 |       0 |
| test\_t1way\_ci.R               | [test\_t1way\_ci.R](testthat/test_t1way_ci.R)                             |  5 | 3.82 |     0 |      0 |       0 |       0 |

<details open>

<summary> Show Detailed Test Results
</summary>

| file                                                                             | context                 | test                          | status  |  n | time |
| :------------------------------------------------------------------------------- | :---------------------- | :---------------------------- | :------ | -: | ---: |
| [test\_anova\_subtitles.R](testthat/test_anova_subtitles.R#L30_L33)              | anova\_subtitles        | anova subtitles work          | PASS    |  4 | 0.78 |
| [test\_chisq\_v\_ci.R](testthat/test_chisq_v_ci.R#L43_L47)                       | chisq\_v\_ci            | chisq\_v\_ci works            | PASS    | 10 | 2.09 |
| [test\_cor\_test\_ci.R](testthat/test_cor_test_ci.R#L43_L47)                     | cor\_test\_ci           | cor\_test\_ci works           | PASS    | 12 | 0.45 |
| [test\_ggbetweenstats.R](testthat/test_ggbetweenstats.R#L17_L20)                 | ggbetweenstats          | ggbetweenstats works          | SKIPPED |  1 | 2.53 |
| [test\_grouped\_ggscatterstats.R](testthat/test_grouped_ggscatterstats.R#L7_L15) | grouped\_ggscatterstats | grouped\_ggscatterstats works | PASS    |  1 | 0.07 |
| [test\_lm\_effsize\_ci.R](testthat/test_lm_effsize_ci.R#L65_L69)                 | lm\_effsize\_ci         | lm\_effsize\_ci works         | PASS    |  9 | 3.28 |
| [test\_robcor\_ci.R](testthat/test_robcor_ci.R#L37_L41)                          | robcor\_ci              | robcor\_ci works              | PASS    |  8 | 0.22 |
| [test\_t\_test\_subtitles.R](testthat/test_t_test_subtitles.R#L41_L45)           | t\_test\_subtitles      | t-test subtitles work         | PASS    |  1 | 0.27 |
| [test\_t1way\_ci.R](testthat/test_t1way_ci.R#L56)                                | t1way\_ci               | t1way\_ci works               | PASS    |  5 | 3.82 |

</details>

<details>

<summary> Session Info </summary>

| Field    | Value                            |
| :------- | :------------------------------- |
| Version  | R version 3.5.1 (2018-07-02)     |
| Platform | x86\_64-w64-mingw32/x64 (64-bit) |
| Running  | Windows \>= 8 x64 (build 9200)   |
| Language | English\_United States           |
| Timezone | America/New\_York                |

| Package  | Version    |
| :------- | :--------- |
| testthat | 2.0.0      |
| covr     | 3.2.0.9000 |
| covrpage | 0.0.59     |

</details>

<!--- Final Status : skipped/warning --->