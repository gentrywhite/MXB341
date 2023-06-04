
***
*Solution*: 

(a) If $y_{i} \sim \text{Bin}(k,\theta)$, then $s = \sum_{i=1}^n y_i \sim \text{Bin}(nk,\theta)$. Proof omitted, using MGF is one option.

(b) $$\begin{aligned}
		\mathcal{I}_{n}(\theta) &= E\left[- \frac{d^2 \ell(\theta)}{d \theta^2}\right]\\
		&= E\left[\sum_{i=1}^n \frac{y_i}{\theta^2} - \frac{k-y_i}{(1-\theta)^2} \right]\\
		&= \sum_{i=1}^n \left[\frac{E(y_i)}{\theta^2}- \frac{k-E(y_i)}{(1-\theta)^2} \right]\\
		&= \sum_{i=1}^n \left[\frac{k}{\theta}- \frac{k}{1-\theta} \right] \qquad \text{by noting } E(y_i)=k\theta\\
		&= \frac{nk}{\theta(1-\theta)}.
	\end{aligned}$$ 
thus the CRB is: $\text{var}(\hat{\theta}) \geq \frac{\theta(1-\theta)}{nk}$.
  
(c) The log-likelihood is $\ell(\theta) = \sum_{i=1}^{n} \left\{ y_{i} \log \theta + (k-y_i)\log (1-\theta) \right\} + C.$ The first and second derivatives are
	$$\begin{aligned}
		\frac{d \ell(\theta)}{d \theta} &= \sum_{i=1}^n \frac{y_i}{\theta} - \frac{k-y_i}{1-\theta}\\
		\frac{d^2 \ell(\theta)}{d \theta^2} &= -\sum_{i=1}^n \frac{y_i}{\theta^2} - \frac{k-y_i}{(1-\theta)^2}.
	\end{aligned}$$
	
The MLE $\hat{\theta}$ is found by solving
	$$\begin{aligned}
		\frac{d \ell(\theta)}{d \theta}|_{\theta=\hat{\theta}} &= \sum_{i=1}^n \frac{y_i}{\hat{\theta}} - \frac{k-y_i}{1-\hat{\theta}}=0\\
		\text{which gives } \hat{\theta} &= \frac{\sum_{i=1}^ny_i}{nk},
	\end{aligned}$$
	the pooled proportion of successes. Note that $-\frac{d^2 \ell(\theta)}{d \theta^2}$ is $>0$ for all $\theta\in (0,1)$ (a convex optimisation) so that the MLE is a maximum and unique.
  
The expectation of the MLE is given by
	$$\begin{aligned}
		E(\hat{\theta}) &= E\left(\frac{\sum_{i=1}^n y_i}{nk}\right)\\
		&= \sum_{i=1}^n\frac{E\left(y_i\right)}{nk}\\
		&= \sum_{i=1}^n \frac{\theta}{n}, \quad \text{by noting } E(y_i)=k\theta\\
		&=\theta,
	\end{aligned}$$
	and hence the maximum likelihood estimate $\hat{\theta}$ is an unbiased estimate of $\theta$.
	
(d) The variance of the MLE is given by
		$$\begin{aligned}
		\text{var}(\hat{\theta}) &= \text{var}\left(\frac{1}{nk}\sum_{i=1}^n y_i\right)\\
		&=\frac{1}{n^2k^2}\text{var}\left(\sum_{i=1}^n y_i\right)\\
	  &=\frac{1}{n^2k^2}\text{var}(s)\\
		&=\frac{nk\theta(1-\theta)}{n^2k^2} \quad \text{using part (a)} \\
		&= \frac{\theta(1-\theta)}{nk}.
	\end{aligned}$$ Hence we note that the MLE $\hat{\theta}$ is an **efficient estimator** since its variance is equal to the Cramér-Rao minimum variance bound.
	
***
