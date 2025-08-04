# Base R Shiny image
FROM rocker/shiny

# Make a directory in the container
RUN mkdir /srv/shiny-server/
WORKDIR /srv/shiny-server/

# Install R dependencies
# Install renv and restore packages
COPY renv.lock renv.lock
RUN R -e "install.packages('renv', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "renv::restore()"

# Copy the shiny app code
COPY . .

# Install the package
RUN R -e "remotes::install_local('.', upgrade = 'never')"

# Expose the application port
EXPOSE 3838

# Run the R Shiny application
CMD R -e "options('shiny.port' = 3838, shiny.host = '0.0.0.0', 'golem.app.prod' = T, 'shiny.autoload.r' = F);"
CMD R -e "library(minifyer); minifyer::run_app()"