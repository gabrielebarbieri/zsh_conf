# Spark
export SPARK_VERSION=`ls /usr/local/Cellar/apache-spark/ | sort | tail -1`
export SPARK_HOME="/usr/local/Cellar/apache-spark/$SPARK_VERSION/libexec"
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.3-src.zip:$PYTHONPATH

# Delete .pyc files in the current folder and in all the subfolders
alias delpyc='find . -name \*.pyc -delete' 

# pyspark in juptyter
alias jupyspark='PYSPARK_DRIVER_PYTHON=jupyter PYSPARK_DRIVER_PYTHON_OPTS="notebook"  pyspark'

# Open pycharm
alias pycharm='open -a PyCharm\ CE'