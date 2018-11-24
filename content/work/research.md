---
title: Research
author: FSP
date: 2017-05-20
summary: 10
---

## Climate Variability and Ice-shelf Change 

*Investigating how the Antarctic ice shelves respond to climate variability such as El Niño/Southern Oscillation.*

Satellite observations over the past two decades have revealed increasing loss of grounded ice in West Antarctica, associated with floating ice shelves that have been thinning. Thinning reduces an ice shelf’s ability to restrain grounded-ice discharge, yet our understanding of the climate processes that drive mass changes is limited. Here, we use ice-shelf height data from four satellite altimeter missions (1994–2017) to show a direct link between ice-shelf height variability in the Antarctic Pacific sector and changes in regional atmospheric circulation driven by the El Niño/Southern Oscillation. This link is strongest from the Dotson to Ross ice shelves and weaker elsewhere. During intense El Niño years, height increase by accumulation exceeds the height decrease by basal melting, but net ice-shelf mass declines as basal ice loss exceeds ice gain by lower-density snow. Our results demonstrate a substantial response of Amundsen Sea ice shelves to global and regional climate variability, with rates of change in height and mass on interannual timescales that can be comparable to the longer-term trend, and with mass changes from surface accumulation offsetting a significant fraction of the changes in basal melting. This implies that ice-shelf height and mass variability will increase as interannual atmospheric variability increases in a warming climate.

Check out our paper in [*Nature Geoscience*](https://www.nature.com/articles/s41561-017-0033-0)

![ENSO influence](/img/enso_influence.png)

**Figure:** Relative influence of ENSO along the Antarctic Pacific margin. (a) Regional variation of the similarity index (size and color of squares) between ice-shelf height-anomaly records and the time-integrated Oceanic Niño Index (ONI). (b) 12-month running integral of ONI (that is, ENSO) lagged by ~6 months (top plot) and 12-month running means of ice-shelf height anomalies for the combined Amundsen (AMU) ice shelves and six individual ice shelves; the shaded area highlights the large height change resulting from the 1997–2001 El Niño-to-La Niña transition.


## Multi-satellite Data Fusion 

*Constructing long-term continous time series of ice-shelf height change from multiple satellite altimeters.*

Antarctica's ice shelves, the floating extensions of the ice sheet, exert an important dynamic constraint on the flow of ice from the grounded ice sheet to the ocean and, therefore, on changes in global sea level. Thinning of an ice shelf reduces its ability to restrain the ice discharge from the grounded ice sheet. However, our understanding of how ice shelf processes couple ice-sheet changes to climate variability is still rudimentary. In part, this is due to the brevity and low temporal resolution of surveys of ice shelf thickness relative to the broad range of time scales on which ice-sheet mass fluctuates. Here, we present improved procedures to construct 18-year (1994–2012) time series of Antarctic ice-shelf surface height at high spatial resolution (~30 km) by merging data from three overlapping satellite radar altimeter missions (ERS-1, ERS-2, and Envisat). We apply an averaging scheme to enhance the signal-to-noise ratio of height changes over the floating ice shelves, and extract low-order polynomial trends using a robust approach (regularized regression with cross-validation) that accounts for both bias and variance in the fit. We construct formal confidence intervals by bootstrap resampling of the residuals of the fit. The largest source of height error arises from the interaction of the radar signal with the snow and firn surface; on annual time scales, changes in surface and sub-surface scattering and radar penetration lead to apparent height changes that are larger than the true surface-height change arising from densification. Our 18-year time series of surface height provide an insight into how ice shelves respond to the changing atmospheric and oceanic conditions. Our methods could also be applied to grounded portions of the ice sheets, both in Antarctica and Greenland.

Check out our paper in [*Remote Sensing of Environment*](https://www.sciencedirect.com/science/article/pii/S0034425716300268)

![Time Series Analysis](/img/tseries_matrix.png)

**Figure:** Representation of the multi-reference time series approach. (Left) individual time series of cumulative change. (Right) diagram representing the matrix formed with the time series on the left (one time series per row). From top to bottom is depicted the process of forming single-grid-cell average time series.


## Geophysical Data Analysis

*Large-scale processing, statistical modeling and time series analysis applied to Earth observations.*

I work primarily with observations (i.e. data). I am interested in the large-scale monitoring of the Earth's surface. My past and current work include the mapping and change detection of Earth's topography, bathymetry and gravity field, as observed by radars, lidars, imagery, sonars and gravimeters, among others. The following technologies constitute the core of our tools. We use high-performance computing (HPC) to process large-scale satellite data on dedicated clusters ([San Diego Supercomputer Center](https://www.sdsc.edu/News%20Items/PR20150420_antarctic_ice.html)) or on a local computing grid ([assembled by myself](https://gist.github.com/fspaolo/5942163)) for smaller jobs. For parallelization, we have used MPI ([mpi4py](https://bitbucket.org/mpi4py/mpi4py)) and Python libraries such as [Joblib](https://pythonhosted.org/joblib/) and [Dask](http://dask.pydata.org/en/latest/) for simpler data workloads. We store and manage information using the [HDF5](https://www.hdfgroup.org/HDF5/) and [NetCDF4](http://www.unidata.ucar.edu/software/netcdf/) data models. For visualization we have used [ParaView](http://www.paraview.org/), [Mayavi](http://docs.enthought.com/mayavi/mayavi/), [Matplotlib](http://matplotlib.org/) and [GMT](http://gmt.soest.hawaii.edu/) (all open source!). Examples of signal detection and analysis methods we use routinely are: Gaussian Process Regression (interpolation), Multivariate Singular Spectrum Analysis (signal decomposition and reconstruction), Multi-taper and Maximum-entropy methods (spectral density estimation), Stationary Bootstrapping (variance and confidence interval estimation), Hodrick-Prescott and LOWESS filtering (trend and cycle extraction), Least Squares Collocation and Kalman filters (heterogeneous data integration and space-time modeling), etc.

Check out my [*PhD Dissertation*](http://fspaolo.net/work/phd/)

![Time Series Analysis](/img/oscil_modes.png)

**Figure:** Modes of oscillation in the ice-shelf height time series. (left) The empirical orthogonal functions paired as EOFs 1–2, 3–4 (interannual components) and 5–6 (annual component). Note the phase quadrature (∼π/2 shift) between pairs. (right) The reconstruction of each pair of modes in the time domain. This is equivalent to filtering the original time series (in gray) with respect to particular frequencies.


## Ice-shelf thickness change from Satellite Altimetry

*Multi-mission satellite altimetry to investigate long-term trends and variability in Antarctic ice-shelf thickness.*

Antarctica's ice shelves exert a significant dynamic constraint on the flow of ice from the grounded ice sheet to the ocean, and hence on changes in global sea level. However, our understanding of how they respond to the changing atmospheric and oceanic conditions is still rudimentary. Much of the present knowledge of our understanding of how ice-shelf processes couple ice sheet changes to climate variability comes from analyses of trends in surface height change (dh/dt) derived from satellite altimeter data. These analyses are usually based on short records from single satellite missions and generally fail to identify neither the significant interannual-to-decadal variability that is present nor the underlying long-term trend. To avoid these limitations, we use improved procedures to integrate data from multiple satellite radar altimeter missions (ERS1, ERS2, and Envisat) to derive reliable long-term (18 years) continuous records of surface height changes for almost all of Antarctica's ice shelf area. We show that there is considerable variability in the height-change signal, and also that trends on short time intervals are not representative of the 18-year trend. Comparison of "modes" of variability with known climate indices and observed changes in oceanic and atmospheric conditions, will allow us to determine whether the dominant cause of Antarctic ice shelf change is related to climate or intrinsic ice sheet variability.

Check out our paper in [*Science*](http://www.sciencemag.org/content/348/6232/327.abstract)

![Antarctic ice shelves](/img/ishelf_change.png)

**Figure:** Eighteen years of changes in the Antarctic ice shelves. Color map is rate of thickness change, circles are percentage thickness gained or lost, time series are total volume change over 18 years.


## Marine Gravity Field from Satellite Altimetry

*Satellite altimeter-derived sea surface gradient and shipborne gravity for an integrated marine gravity field.*

Sea surface gradients (slopes), derived from the Geosat and ERS-1 satellite altimetry geodetic missions, were integrated with marine gravity data from the National Geophysical Data Center (NGDC) and Brazilian national surveys. Using the least squares collocation method (stochastic approach), models of free-air gravity anomaly and geoid height were constructed for the coast of Brazil with a resolution of 2' x 2' (minutes). The integration of satellite and shipborne (heterogeneous) data shows better statistical results in regions near the coast than using satellite data only, suggesting an improvement when compared to the state-of-the-art global gravity models. Furthermore, the stochastic models were obtained with considerably less input information than that used by the global reference models. Unlike spectral methods (deterministic approach), the least squares collocation presented a very low content of high-frequency noise in the predicted gravity anomalies. This may be essential for improving the high-resolution representation of the gravity field in regions of ocean-continent transition.

Check out our paper in [*Journal of Geodynamics*](http://www.sciencedirect.com/science/article/pii/S0264370710000803)

![Gravity and Geoid Brazil](/img/gravity_geoid.png)

**Figure:** Integrated gravity models constructed using sea surface gradients (slopes), derived from satellite altimetry, and marine gravity data along the Brazilian coast: (left) free-air gravity anomaly and (right) geoid height.
