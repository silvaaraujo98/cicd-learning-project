FROM python:3.11-slim

WORKDIR /app
#Copy the configuration file
COPY pyproject.toml .

# Install all the dependencies
RUN pip install --no-cache-dir .

#Copy the main script
COPY main.py .

#Run the main script using cmd
CMD ["python", "main.py"]