FROM python:3.10.1-slim-buster
WORKDIR /usr/src/app
ENV IPYTHONDIR /usr/src/app/.ipython
RUN echo 'alias tst="python -m pytest src"' >> ~/.bashrc
RUN echo 'alias dtst="python -m pytest src --pdb"' >> ~/.bashrc
RUN echo 'alias app="streamlit run app/app.py"' >> ~/.bashrc
RUN echo 'alias mapp="streamlit run app/modelApp.py"' >> ~/.bashrc
RUN echo 'alias jlab="jupyter lab --allow-root --ip 0.0.0.0 --no-browser"' >> ~/.bashrc
ENV PYTHONFAULTHANDLER=1
COPY requirements.txt .
RUN --mount=type=cache,target=/root/.cache/pip pip install -r requirements.txt
