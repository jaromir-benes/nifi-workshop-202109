
close all
clear

load mat/createModel.mat m

m1 = m;
m1.ss_roc_ay = 1.04^(1/4);

m1 = steady( ...
    m1 ...
    , "fixLevel", ["pc", "gdp", "gdp_dev", "cum_log_gdp_dev", "y0", "ax", "tot", "pm_fcy"] ...
    , "blocks", false ...
);


t = table( ...
    [m, m1], ["steadyLevel", "steadyChange", "form", "description"] ...
    , "round", 8 ...
    , "writeTable", "comparativeStatic.xlsx" ...
)

