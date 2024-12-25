FROM python:3.10

# Copy requirements file to the image
COPY ./requirements.txt /webapp/requirements.txt

# Set working directory
WORKDIR /webapp

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY webapp/* /webapp

# Expose port 8000 for the FastAPI application
EXPOSE 8000

# Run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
