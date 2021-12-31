FROM mongo:4.4.10
WORKDIR /usr/data
COPY . .
RUN ls
RUN ["chmod", "+x", "/usr/data/load-data.sh"]
ENTRYPOINT [ "/usr/data/load-data.sh"]