FROM golang:1.18

COPY executable /executable

EXPOSE 8080

CMD [ "/executable" ]
