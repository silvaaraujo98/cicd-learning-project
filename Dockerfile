FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app
#Copy the configuration file
COPY pyproject.toml .

# Install all the dependencies
RUN pip install --no-cache-dir .

#Copy the main script
# Copy the application code into the container
COPY main.py .

#Run the main script using cmd
# Command to run the python script
CMD ["python", "main.py"]