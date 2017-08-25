FROM bcgsc/orca-6:2017.08.23
RUN chmod -R g+w /home/linuxbrew/.linuxbrew
LABEL maintainer="Tatyana Mozgacheva tmozgacheva@bcgsc.ca" \
      org.label-schema.description="Genomics Research Container Architecture" \
      org.label-schema.url="http://www.bcgsc.ca/services/orca" \
      org.label-schema.vcs-url="https://github.com/bcgsc/orca" \
      org.label-schema.vendor="BC Cancer Agency Genome Sciences Centre"
