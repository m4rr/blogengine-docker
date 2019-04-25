FROM httpd:2.4

COPY e2_distr_v3254 blog
RUN ls -la
