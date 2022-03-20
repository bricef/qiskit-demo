FROM continuumio/miniconda3

RUN mkdir /opt/notebooks
RUN /opt/conda/bin/conda install jupyter -y --quiet
RUN pip install qiskit matplotlib qiskit[visualization]

CMD ["jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
