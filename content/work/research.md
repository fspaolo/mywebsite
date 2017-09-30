+++
date = "2017-05-20T12:00:00+06:00"
title = "Research"
categories = ["Features"]
tags = ["feature"]
+++

## Geophysical Data Analysis

*Large-scale processing, statistical modeling and time series analysis applied to Earth observations.*

I work primarily with observations (i.e. data). I am interested in the large-scale monitoring of the Earth's surface. My past and current work include the mapping and change detection of Earth's topography, bathymetry and gravity field, as observed by radars, lidars, imagery, sonars and gravimeters, among others. The following technologies constitute the core of our tools. We use high-performance computing (HPC) to process large-scale satellite data on dedicated clusters ([San Diego Supercomputer Center](https://www.sdsc.edu/News%20Items/PR20150420_antarctic_ice.html)) or on a local computing grid ([assembled by myself](https://gist.github.com/fspaolo/5942163)) for smaller jobs. For parallelization, we have used MPI ([mpi4py](https://bitbucket.org/mpi4py/mpi4py)) and Python libraries such as [Joblib](https://pythonhosted.org/joblib/) and [Dask](http://dask.pydata.org/en/latest/) for simpler data workloads. We store and manage information using the [HDF5](https://www.hdfgroup.org/HDF5/) and [NetCDF4](http://www.unidata.ucar.edu/software/netcdf/) data models. For visualization we have used [ParaView](http://www.paraview.org/), [Mayavi](http://docs.enthought.com/mayavi/mayavi/), [Matplotlib](http://matplotlib.org/) and [GMT](http://gmt.soest.hawaii.edu/) (all open source!). Examples of signal detection and analysis methods we use routinely are: Gaussian Process Regression (interpolation), Multivariate Singular Spectrum Analysis (signal decomposition and reconstruction), Multi-taper and Maximum-entropy methods (spectral density estimation), Stationary Bootstrapping (variance and confidence interval estimation), Hodrick-Prescott and LOWESS filtering (trend and cycle extraction), Least Squares Collocation and Kalman filters (heterogeneous data integration and space-time modeling), etc.

Check out our Python library on GitHub: [AltimPy](https://github.com/fspaolo/altimpy.git)

![Time Series Analysis](work/time_series.png)

Constructing height-change time series from multiple satellite altimeters, and modeling the variability and trend.


## Satellite Altimetry and Ice Shelf Change

*Multi-mission satellite altimetry to investigate long-term trends and variability in Antarctic ice-shelf thickness.*

Antarctica's ice shelves exert a significant dynamic constraint on the flow of ice from the grounded ice sheet to the ocean, and hence on changes in global sea level. However, our understanding of how they respond to the changing atmospheric and oceanic conditions is still rudimentary. Much of the present knowledge of our understanding of how ice-shelf processes couple ice sheet changes to climate variability comes from analyses of trends in surface height change (dh/dt) derived from satellite altimeter data. These analyses are usually based on short records from single satellite missions and generally fail to identify neither the significant interannual-to-decadal variability that is present nor the underlying long-term trend. To avoid these limitations, we use improved procedures to integrate data from multiple satellite radar altimeter missions (ERS1, ERS2, and Envisat) to derive reliable long-term (18 years) continuous records of surface height changes for almost all of Antarctica's ice shelf area. We show that there is considerable variability in the height-change signal, and also that trends on short time intervals are not representative of the 18-year trend. Comparison of "modes" of variability with known climate indices and observed changes in oceanic and atmospheric conditions, will allow us to determine whether the dominant cause of Antarctic ice shelf change is related to climate or intrinsic ice sheet variability.

Check out our paper in *Science*: [sciencemag.org](http://www.sciencemag.org/content/348/6232/327.abstract)

![Antarctic ice shelves](work/ice_shelf_change.png)

Eighteen years of changes in the Antarctic ice shelves. Color map is rate of thickness change, circles are percentage thickness gained or lost, time series are total volume change over 18 years.


## Satellite Altimetry and Marine Gravity

*Satellite altimeter-derived sea surface gradient and shipborne gravity for an integrated marine gravity field.*

Sea surface gradients (slopes), derived from the Geosat and ERS-1 satellite altimetry geodetic missions, were integrated with marine gravity data from the National Geophysical Data Center (NGDC) and Brazilian national surveys. Using the least squares collocation method (stochastic approach), models of free-air gravity anomaly and geoid height were constructed for the coast of Brazil with a resolution of 2' x 2' (minutes). The integration of satellite and shipborne (heterogeneous) data shows better statistical results in regions near the coast than using satellite data only, suggesting an improvement when compared to the state-of-the-art global gravity models. Furthermore, the stochastic models were obtained with considerably less input information than that used by the global reference models. Unlike spectral methods (deterministic approach), the least squares collocation presented a very low content of high-frequency noise in the predicted gravity anomalies. This may be essential for improving the high-resolution representation of the gravity field in regions of ocean-continent transition.

Check out our paper in *J. Geodyn.*: [sciencedirect.com](http://www.sciencedirect.com/science/article/pii/S0264370710000803)

![Gravity and Geoid Brazil](work/gravity_geoid.png)

Integrated gravity models constructed using sea surface gradients (slopes) and marine gravity data along the Brazilian coast: (left) free-air gravity anomaly and (right) geoid height.
