{{/*
Expand the name of the chart.
*/}}
{{- define "jdownloader2-headless.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "jdownloader2-headless.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "jdownloader2-headless.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "jdownloader2-headless.labels" -}}
helm.sh/chart: {{ include "jdownloader2-headless.chart" . }}
{{ include "jdownloader2-headless.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "jdownloader2-headless.selectorLabels" -}}
app.kubernetes.io/name: {{ include "jdownloader2-headless.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "jdownloader2-headless.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "jdownloader2-headless.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "jdownloader2-headless.secretName" -}}
{{- if eq .Values.myjd.existingSecretName "" }}
{{- include "jdownloader2-headless.fullname" . }}-secret
{{- else }}
{{- .Values.myjd.existingSecretName }}
{{- end }}
{{- end }}