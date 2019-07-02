#FROM python:onbuild
FROM python:latest
COPY requirements.txt .
RUN -r requirements.txt
ENV PORT 8080
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["app.py"]
