FROM minifyer_base
COPY renv.lock.prod renv.lock
RUN R -e 'options(renv.config.pak.enabled = FALSE);renv::restore()'
COPY minifyer_*.tar.gz /app.tar.gz
RUN R -e 'remotes::install_local("/app.tar.gz",upgrade="never")'
RUN rm /app.tar.gz
USER rstudio
CMD R -e "options('shiny.port'=$PORT,shiny.host='0.0.0.0');library(minifyer);minifyer::run_app()"
