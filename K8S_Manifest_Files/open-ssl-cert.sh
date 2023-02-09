$ openssl req -x509 -nodes -days 365 -newkey rsa:2048 -out gmk-ingress-tls.crt -keyout gmk-ingress-tls.key -subj "/CN=gmk.devopspractices.com/O=gmk-ingress-tls"

# Create a secret for with your certificate .key & .crt file

$ kubectl create secret tls gmk-ingress-tls --namespace testing-env --key gmk-ingress-tls.key --cert gmk-ingress-tls.crt
 