context("subtitle_t_bayes")

testthat::test_that(
  desc = "subtitle_t_bayes works",
  code = {

    # ggstatsplot output
    set.seed(123)
    using_function1 <-
      ggstatsplot::subtitle_t_bayes(
        data = dplyr::filter(movies_long, genre == "Action" | genre == "Drama"),
        x = genre,
        y = rating,
        bf.prior = .9,
        k = 5,
        messages = FALSE
      )

    # expected output
    set.seed(123)
    results1 <-
      ggplot2::expr(
        paste(
          italic("t"),
          "(",
          612,
          ") = ",
          "-10.52948",
          ", log"["e"],
          "(BF"["10"],
          ") = ",
          "47.8",
          ", Prior width = ",
          "0.900",
          ", ",
          italic("d"),
          " = ",
          "-0.92473",
          ", ",
          italic("n"),
          " = ",
          614L
        )
      )

    # testing overall call
    testthat::expect_identical(using_function1, results1)
  }
)
