% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/IOS.R, R/ios_IOSMR.R
\docType{package}
\name{mr.ios}
\alias{mr.ios}
\title{MR.IOS:: Calculate index of suspicion}
\usage{
mr.ios(
  dat = dat,
  ios = ios_dat,
  ios_type = "ios1_mean",
  alpha = 0.05,
  weights,
  tol = 1e-04
)
}
\arguments{
\item{dat}{Harmonised dataset of the exposure and the outcome, obtained using \code{TwoSampleMR::harmonise_data()}}

\item{ios}{IOS score obtained using \code{ios()}}

\item{ios_type}{Types of IOS estimators. Defalt value is \code{"ios1_mean"}.}

\item{alpha}{Statistial significance threshold for identifying outliers. Default value is \code{0.05}.}

\item{weights}{Inverse variance weights used to calculate IVW estimate and Cochran's Q statistic, considering IOS in the model. Detailed information of the definition of each weight is provided here: \code{https://github.com/WSpiller/RadialMR}. Select first order (\code{1}), second order (\code{2}) or modified second order weights (\code{3}).}

\item{tol}{Tolerance threshold for performing the iterative IVW approach. Default value is \code{0.0001}.}
}
\value{
List of estimates
}
\description{
A package for sensitivity analysis in two-samle Mendelian randomization setting when horizontal pleiotropy exists. 
It uses [IEU GWAS database](https://gwas.mrcieu.ac.uk/) to obtain data automatically, 
and is implemented to RadialMR to run the analysis.

Performs Radial inverse variance weighted (IVW) model using IOS to detect the most pleiotropic SNPs based on IOS score. The SNPs with higher score for IOS are downweighted by multiplying IOS by inverse variance weight implemented in Radial MR package.
}
\details{
If a SNP influences multiple other traits then it could be 'suspicious', and more likely to be pleiotropic. This function implements two basic approaches to estimate IOS

\itemize{
\item ios1: A summary of the SNP r2 with the other traits (r2_gu).
\item ios2: A summary of the ratio of r2_gu / r2_gx, where r2_gx is the variance explained by the SNP on the exposure. Estimates the index of suspicion, whereupon SNPs which have a larger effect on a set of traits given their effect on the exposure are deemed more suspicious.
}
}
