test_that("dt works", {
  rec_spec <- recipes::recipe(mpg ~ ., data = mtcars) %>%
    recipes::step_normalize(recipes::all_numeric_predictors())

  lm_spec <- parsnip::linear_reg()

  wf_spec <- workflows::workflow() %>%
    workflows::add_recipe(rec_spec) %>%
    workflows::add_model(lm_spec)

  wf_fit <- parsnip::fit(wf_spec, mtcars)

  obj <- weasel(wf_fit)

  expect_snapshot(
    weasel_dt(obj)
  )
})