# Stationarity (정상성)
- No systematic change in mean (i.e. no TREND)
- No systematic change in variation
- No periodic fluctuations 
즉, 특정 구간의 데이터의 특징이 다른 구간의 데이터의 특징과 매우 유사해야함 

★ Non-stationary time series data는 stationary time seires로 변환해줘야 함 (transformation)

# AutoCovariance Function (ACF)
## [ 복습 ]
- **Random variable(확률변수)** : 사건에서 발생할 수 있는 모든 가능성의 집합(sample space)에서 무작위로 나타나는 하나의 가능성을 변수로 표현 
- **Covariance(공분산)** : 두 확률변수의 선형종속성(*linear* dependence) 확인
- **Stochastic Processes(확률적 과정)** : collection of random variables  
$$X_1, X_2, X_3,... \ : \ X_t \sim distribusion(\mu_t, \sigma_t^2)$$
  - 시간의 진행에 대해 확률적인 변화를 가지는 구조. 즉, 각각의 timestep에서 어떤 확률변수 값을 갖을지 모름
  - VS deterministic processes

=> ***★시계열을 '확률 과정'이라고 볼 수 있다!!★***


## [ Autocovariance function (자기상관함수) ]
- 시차에 따른 일련의 자기상관
- 자기 자신 $(X_t)$ 과 특정 간격(timestep k)만큼 이동시킨 자기자신 $(X_{t+k})$ 과의 공분산 (시간 이동=시차=time lag)
- 만약, 어제의 데이터가 오늘에 영향을 미치치 않고 오늘의 데이터가 내일에 영향을 미치지 않는 **독립**이라면, **자기상관함수의 값은 0**
- Autocovariance coefficients at different lags : 
$$\gamma_k=\gamma(t,t+k)=Cov(X_t, X_{t+k})=E[(X_t-\mu)(X_{t+l}-\mu)]$$ 
- $c_k$는 $\gamma_k$의 estimator(추정량) : $\gamma_k \approx c_k $
<img src="https://user-images.githubusercontent.com/96452587/184349324-6ec5a305-d0c9-4245-8d80-cb35d0497431.png" width="187" height="40">

- R 명령어 : acf(*time series*, type=*'covariance'*)


- ?정상 시계열에서는 ACF 그래프가 빠르게 0에 수렴하고 비정상 시계열에서는 천천히 감소함
- ?timestep k는 Autocovariance coefficient를 의미함 


## [ Autocorrelation function(자기상관계수) ]
- 의미상으로는 Autocovariance를 노멀라이즈 한 것
- Autocorrelation coefficient between $𝑋_𝑡$ and $𝑋_{𝑡+𝑘}$:
- $$-1 \leq \ro_k=\frac{\gamma_k}{\gamma_0} \leq 1$$


