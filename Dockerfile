FROM mattrayner/lamp:latest-1804

COPY e2_distr_v3254/* app/
RUN ls -la app/

CMD ["/run.sh"]
