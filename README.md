# ONT-GUPPY


```
aws batch describe-compute-environments --compute-environments  GPU-ECS-OPT-NF-LT-4  --profile personal >  GPU-ECS-OPT-NF-LT.json
```

```
aws batch describe-job-queues --profile personal
```

```
aws batch describe-job-definitions --profile personal > nextlow-ont-job-definition.json
```

```
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 418.87.00    Driver Version: 418.87.00    CUDA Version: 10.1     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|===============================+======================+======================|
|   0  Tesla T4            On   | 00000000:00:1E.0 Off |                    0 |
| N/A   78C    P0    69W /  70W |   3261MiB / 15079MiB |     98%      Default |
+-------------------------------+----------------------+----------------------+
+-----------------------------------------------------------------------------+
| Processes:                                                       GPU Memory |
|  GPU       PID   Type   Process name                             Usage      |
|=============================================================================|
|    0     19209      C   ///ont-guppy/bin/guppy_basecaller           3251MiB |
+-----------------------------------------------------------------------------+
```
