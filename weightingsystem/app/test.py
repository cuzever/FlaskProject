import mysql.connector
config = {'host': 'localhost',
          'user': 'root',
          'password': '111111',
          'port': 3306,
          'database': 'troubleshooting',
          'charset': 'utf8'}
try:
    cnn = mysql.connector.connect(**config)
except mysql.connector.Error as e:
    print('connect fails!{}'.format(e))

cursor = cnn.cursor()
query_string = ("SELECT * FROM `faultlist`")
cursor.execute(query_string)
data = cursor.fetchall()
print(data)
