Steps to Deploy
Create the ConfigMap:

```bash
kubectl create configmap kubeconfig-configmap --from-file=kubeconfig=~/.kube/config
```

Apply the Job:

```bash
kubectl apply -f terraform-job.yaml
```

Check Job Logs:

```bash
kubectl logs job/terraform-job
```
