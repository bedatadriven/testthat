% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reporter-junit.R
\docType{data}
\name{JunitReporter}
\alias{JunitReporter}
\title{Test reporter: summary of errors in jUnit XML format.}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
JunitReporter
}
\description{
This reporter includes detailed results about each test and summaries,
written to a file (or stdout) in jUnit XML format. This can be read by
the Jenkins Continuous Integration System to report on a dashboard etc.
Requires the \emph{xml2} package.
}
\details{
To fit into the jUnit structure, context() becomes the \code{<testsuite>}
name as well as the base of the \code{<testcase> classname}. The
test_that() name becomes the rest of the \code{<testcase> classname}.
The deparsed expect_that() call becomes the \code{<testcase>} name.
On failure, the message goes into the \code{<failure>} node message
argument (first line only) and into its text content (full message).

Execution time and some other details are also recorded.

References for the jUnit XML format:
\url{http://llg.cubic.org/docs/junit/}
}
\keyword{datasets}

