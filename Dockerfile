FROM python:3.7.3-stretch

# Create a working directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/
COPY . model_data /app/
# Install packages from requirements.txt
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
# hadolint ignore=DL3013

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]