#!/bin/bash
jupyter notebook --ip 0.0.0.0 --allow-root --port 8080 --no-browser --NotebookApp.token='' --NotebookApp.password='' &> /dev/null &
/bin/bash