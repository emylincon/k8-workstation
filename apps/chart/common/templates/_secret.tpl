{{- define "common.secret" }}
---
apiVersion: v1
kind: Secret
metadata:
  name: {{ include "common.fullname" . }}
  labels:
    {{- include "common.labels" . | nindent 4 }}
type: Opaque
{{- with .Values.secret }}
stringData:
  {{- toYaml . | nindent 2 }}
{{- end }}
{{- end }}
