import pymysql
from pymysql.cursors import DictCursor
from app.config import settings

def get_db_connection():
    return pymysql.connect(
        host=settings.DB_HOST,
        user=settings.DB_USER,
        password=settings.DB_PASSWORD,
        database=settings.DB_NAME,
        cursorclass=DictCursor,
        autocommit=False
    )
