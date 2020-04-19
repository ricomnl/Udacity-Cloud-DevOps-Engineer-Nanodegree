FROM python:3.7.3-stretch

# Create a working directory
WORKDIR /home

# Copy source code to working directory
COPY requirements.txt .

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip\ 
	&& pip install -r requirements.txt

COPY . .

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD [ "python" , "./app.py" ]