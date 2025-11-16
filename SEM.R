# Signature Model: Cross-National Inequality (HLM + SEM)
model <- '
  SocialDistress =~ income_insecurity + job_precarity + housing_costs
  inequality ~ SocialDistress + gdp + welfare_regime
'

fit <- lavaan::sem(model, data = oecd_data)
summary(fit, fit.measures = TRUE, standardized = TRUE)