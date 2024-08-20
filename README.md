# Rascal Code Server Image

This repository contains a dockerfile with all dependencies required for Rascal pre-installed, it also comes with an in-browser VS Code environment with the rascal extension installed.

## Building the image
```docker build -t code-env .```

## Running a container using the image
```docker run -d -p 8080:8080 -e PASSWORD=<container password> --name <container name> code-env```

This will run the container and make the VS code instance available on http://localhost:8080/. 

