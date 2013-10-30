/*
*/ *=.

* create distance dummies and log variables
tab BH2011_distance_dummy, gen(dist_)
foreach X of var nominal_gdp real_gdp real_gdp_per_capita distance {
	gen ln_`X' = ln(`X') 
}

compress
keep if !missing(census_code)