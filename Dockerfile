FROM nginx:1.17.9

## Step 1:
# Create a working directory
# WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY ./index.html /usr/share/nginx/html/index.html

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
#RUN python3 -m pip install --upgrade pip &&\
#   python3 -m pip install --trusted-host pypi.python.org -r requirements.txt
#RUN make install

## Step 4:
# Expose port 80
#EXPOSE 80

## Step 5:
# Run app.py at container launch
#CMD ["python", "app.py"]