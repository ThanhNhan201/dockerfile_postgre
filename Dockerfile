FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y iputils-ping



FROM postgres:latest

# Chạy các lệnh SQL để tạo cơ sở dữ liệu
COPY init.sql /docker-entrypoint-initdb.d/

# Cài đặt PostgreSQL và tạo cơ sở dữ liệu
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD nhan1232456
ENV POSTGRES_DB login

# Cổng mặc định mà PostgreSQL sẽ lắng nghe
EXPOSE 5432

CMD ["postgres"]
