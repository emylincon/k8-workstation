{{- define "common.service" -}}
---
apiVersion: v1
kind: Service
metadata:
  name: {{ include "common.fullname" . }}
  {{- if eq .Values.service.type "LoadBalancer" }}
  annotations:
    networking.gke.io/load-balancer-type: "Internal"
  {{- end }}
  labels:
    {{- include "common.labels" . | nindent 4 }}
spec:
  type: {{ .Values.service.type }}
  ports:
    - port: {{ .Values.service.port }}
      targetPort: http
      protocol: TCP
      name: http
  selector:
    {{- include "common.selectorLabels" . | nindent 4 }}
{{- if eq .Values.service.type "LoadBalancer" }}
  loadBalancerSourceRanges:
    - "90.216.150.192/26"
    - "90.216.134.192/26"
{{- end }}
{{- end -}}
