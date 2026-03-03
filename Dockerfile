# Use old Alpine base with known CVEs to trigger EC vulnerability check failure
FROM alpine:3.10

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
