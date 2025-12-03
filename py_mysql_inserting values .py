import mysql.connector as c

conn=c.connect(
    host="localhost",
    username="root",
    password="00000000",
    database="school")
my_cursor=conn.cursor()
while True:
    c=int(input("enter student_id"))
    n=input("enter first_name")
    a=int(input("enter marks"))
    g=input("enter grade")
    query="insert into students values({},'{}',{},'{}')".format(c,n,a,g)
    my_cursor.execute(query)
    conn.commit()
    print("Connection to the database was successful.") 
    x=int(input("1 to continue and 0 to stop"))
    if x==0:
        break