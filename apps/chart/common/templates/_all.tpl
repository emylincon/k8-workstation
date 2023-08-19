{{/*
Main entrypoint for the common library chart. It will render all underlying templates based on the provided values.
*/}}
{{- define "common.all" -}}

  {{- include "common.values.setup" . -}}

  {{- /* Build the templates */ -}}
  {{- if .Values.serviceAccount.create -}}
    {{- include "common.serviceAccount" . }}
  {{- end -}}

  {{- if .Values.secret -}}
    {{- include "common.secret" . | nindent 0  }}
  {{- end -}}

  {{- if .Values.config -}}
    {{- include "common.configmap" . | nindent 0  }}
  {{- end -}}

  {{- include "common.deployment" . | nindent 0 }}

  {{- if .Values.autoscaling.enabled -}}
    {{- include "common.hpa" . | nindent 0 }}
  {{- end -}}

  {{- if .Values.service.enabled -}}
    {{- include "common.service" . | nindent 0 }}
  {{- end -}}

  {{- if .Values.ingress.enabled -}}
    {{- include "common.ingress" .  | nindent 0 }}
  {{- end -}}

{{- end -}}
