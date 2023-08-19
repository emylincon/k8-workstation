{{- define "common.configmap" }}
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ include "common.fullname" . }}
  labels:
    {{- include "common.labels" . | nindent 4 }}
{{- with .Values.config }}
data:
  {{- toYaml . | nindent 2 }}
{{- end }}
{{- end }}
