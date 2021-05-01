FROM debian:9.5-slim

LABEL "com.github.actions.name"="ShellCheck Runner"
LABEL "com.github.actions.description"="Run Shellcheck."
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/staranto/my-shellcheck-action"
LABEL "homepage"="http://github.com/staranto/my-shellcheck-action"
LABEL "maintainer"="Steve Taranto <staranto@gmail.com>"

WORKDIR /tmp

# hadolint ignore=DL3008
RUN apt-get update && apt-get -y --no-install-recommends install tree wget xz-utils && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN wget -q https://storage.googleapis.com/shellcheck/shellcheck-latest.linux.x86_64.tar.xz
RUN tar xvJf shellcheck-latest.linux.x86_64.tar.xz 
RUN cp shellcheck-latest/shellcheck /usr/bin

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
