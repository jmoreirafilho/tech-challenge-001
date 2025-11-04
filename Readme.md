# Tech Challenge - Módulo 1  
**Autor:** José Airton Moreira Filho  
**Projeto:** Sistema de Diagnóstico de Câncer de Mama com Machine Learning

## Descrição do Projeto
Projeto final para conclusão do módulo 1.

O objetivo aqui é criar um sistema de apoio ao diagnóstico médico, utilizando aprendizado de máquina (Machine Learning) para prever se um tumor é maligno ou benigno, com base em dados reais do dataset **Breast Cancer Wisconsin**.

### Etapas da Solução: ####
1. Exploração e análise de dados;
2. Pré-processamento (limpeza e transformação);
3. Treinamento de múltiplos modelos;
4. Avaliação com métricas (Accuracy, Recall, F1-score);
5. Interpretação dos resultados com *Feature Importance* e SHAP.

## Estrutura do Projeto
- data/
    - data.csv -> Dataset
- notebooks/
    - diagnostico_cancer_mama.ipynb -> Notebook principal do projeto
- requirements.txt
- Dockerfile
- Readme.md

## Instalação e Execução (sem Docker)
1. Certifique-se de ter o Python 3.10+ instalado
2. Crie um ambiente virtual e ative-o
```
$ python -m venv venv
$ venv\Scripts\activate
```
3. Instale as dependências
```
$ pip install -r requirements.txt
```
4. Inicie o Jupyter Notebook
```
$ jupyter notebook
```
5. Abra o arquivo
> notebooks/diagnostico_cancer_mama.ipynb

## Execução via Docker ##
#### Execute via linha de comando:
```
$ docker build -t tech-challenge-fiap .
$ docker run -p 8888:8888 -v %cd%:/app tech-challenge-fiap
```
#### Acesse no navegador: 
> http://localhost:8888

## Créditos ##
- Dataset: https://www.kaggle.com/datasets/uciml/breast-cancer-wisconsin-data/data
- Autor: JOSE AIRTON MOREIRA FILHO