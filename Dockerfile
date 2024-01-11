FROM --platform=linux/amd64 anchore/grype:latest

# Disable the automatic database update by default
ENV GRYPE_DB_AUTO_UPDATE=false

# Run the update to get the latest vulnerability database. This is done here so that the database can be cached without
# requiring internet access, though the update can still optionally be run at runtime
RUN ["/grype", "db", "update"]