FROM gcr.io/cloud-builders/kubectl

LABEL version="1.0.0"
LABEL name="kubectl"
LABEL repository="http://github.com/d2a-fborgonjen/kubectl"
LABEL homepage="http://github.com/d2a-fborgonjen/kubectl"

LABEL maintainer="Frank Borgonjen"
LABEL com.github.actions.name="Kubernetes CLI - kubectl"
LABEL com.github.actions.description="Runs kubectl"
LABEL com.github.actions.icon="terminal"
LABEL com.github.actions.color="blue"

COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
