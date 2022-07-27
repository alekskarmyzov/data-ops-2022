from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime

def helloWorld():
    print('Hello World from akarmyzov!')

with DAG(dag_id="akarmyzov_hello_world",
        start_date=datetime(2022,5,1),
        schedule_interval="@hourly",
        catchup=False) as dag:
        
        task1 = PythonOperator(
        task_id="akarmyzov_hello_world",
        python_callable=helloWorld)

task1