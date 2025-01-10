<h1>Judging the Efficiency of Estimators using Monte Carlo Simulations</h1>
<h2> What is a Monte Carlo Simulation ?</h2>
<p> The Monte Carlo simulation is a mathematical technique that predicts possible outcomes of an uncertain event.
  It is used to analyze past data to predict a range of future outcomes.
</p>
<h2>Monte Carlo Simulation within the Scope of the Project</h2>
  The Monte Carlo simulation is of particularly great use in problems concerning inputs that are stochatic in nature. 
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
<p></p>
