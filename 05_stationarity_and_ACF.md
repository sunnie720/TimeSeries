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
- 정상 시계열(stationary times series)에서는 자기상관성이 없고 특정 구간의 특성이 반복됨. <br>
  즉, 특정 구간의 길이 timestep 'k'만큼 이동할 때마다 같은 특성이 나타남 
- 정상 시계열에서는 ACF 그래프가 빠르게 0에 수렴하고 비정상 시계열에서는 천천히 감소함
- timestep k는 Autocovariance coefficient를 의미함 


- **ACF** :
$$\gamma (s,t)=Cov(X_s,X_t)=E[(X_s-\mu_s)(X_t-\mu_t)]$$
$$\gamma (t,t)=E[(X_t-\mu_t)^2]=Var(X_t)=\sigma_t^2$$
- **Autocovariance coefficient** : 
$$\gamma_k=\gamma(t,t+k) \approx c_k $$
*$c_k$는 $\gamma_k$의 estimation(추정)
