# 1. Base image
FROM ubuntu:latest

# 2. Maintainer information (optional)
LABEL maintainer="your-email@example.com"

# 3. Set the working directory inside the container
WORKDIR /app

# 4. Copy files from the local machine to the container
COPY . /app

# 5. Install dependencies
RUN apt-get update && apt-get install -y python3

# 6. Define environment variables (optional)
ENV APP_ENV=production

# 7. Expose a port (for networking)
EXPOSE 8080

# 8. Command to run when the container starts
CMD ["python3", "app.py"]

#Similar to CMD, but cannot be overridden easily
ENTRYPOINT ["python3", "script.py"]