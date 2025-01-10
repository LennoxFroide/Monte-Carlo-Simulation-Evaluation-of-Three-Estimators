<h1>Judging the Efficiency of Estimators using Monte Carlo Simulations</h1>
<h2> What is a Monte Carlo Simulation ?</h2>
<p> The Monte Carlo simulation is a mathematical technique that predicts possible outcomes of an uncertain event.
  It is used to analyze past data to predict a range of future outcomes.
</p>
<h2>Monte Carlo Simulation within the Scope of the Project</h2>
  The Monte Carlo simulation is of particularly great use in problems concerning inputs that are stochastic in nature. 
  Such inputs include the random variables of a random process such as a Gaussian random process. For this project a Monte Carlo simulation was used to evaluate
  the performance of three estimators: a sample mean estimator, a sample variance estimator and a test estimator.
</p>
<p>The predictions are made by taking samples of a discrete-time random process of the form:</p>
<p align="center">
                          <strong>X<sub>n</sub> = A + W<sub>n</sub></strong>,
</p>
<p> where Wn are i.i.d, independent identically distributed, Gaussian random variables with a mean of 0 and a variance of A.</p>
<p>These samples are observed for observation windows of size n, where n = 1,2,...,N and the estimators make a prdiction based on these samples.</p>
<p>The three estimators being evaluated are:</p>
<h3>(1.) Sample Mean Estimator</h3>
<p align="center"> <strong>A<sub>1 estimate</sub>=1/N Σ </sub>X<sub>n</sub>       where n = 1,2,...,N</strong> </p>
<h3>(2.) Sample Variance Estimator</h3>
<p align="center">  <strong>A<sub>2 estimate</sub> = 1/(N-1) Σ (X<sub>n</sub> - A<sub>1 estimate</sub> )      where n = 1,2,...,N</p></strong>
<h3>(3.) Test Estimator</h3>
<p align = "center">  <strong>A<sub>3 estimate</sub> = -1⁄2 + √(1/N Σ ( (X<sub>n</sub>)^2  + 1/4  ))      where n = 1,2,...,N</strong></p>

<p>From the Central Limit Theorem we know that <strong>A<sub>1 estimate</sub></strong> will concentrate around <strong>A</strong>, the mean. Since <strong>A</strong> is both
the mean and the variance both the Sample Mean Estimator and the Sample Variance Estimator are valid. We therefore have to evaluate the 
Test Estimator to check whether it is also an effective estimator.</p>
<p>The results of the Monte Carlo simulations using varying values of N are presented and discussed in this paper:</p>
<p align="center"><a href="https://drive.google.com/file/d/1V60R5k1tzcOSemsl-SYUSmnPXGOdgx3H/view?usp=drive_link">Analyzing the Efficiency of Estimators Using Monte Carlo Simulations.</a></p>
