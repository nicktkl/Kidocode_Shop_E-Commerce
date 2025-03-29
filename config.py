from imports import *

load_dotenv()

class Config:
    #SECRET KEY configurations
    SECRET_KEY = 'kidocodeverysecretkey'

    #MAIL configurations
    MAIL_SERVER = 'smtp.gmail.com'
    MAIL_PORT = 587
    MAIL_USE_TLS = True
    MAIL_USE_SSL = False
    MAIL_USERNAME = os.getenv('MAIL_USERNAME', 'MAIL_EMAIL')
    MAIL_PASSWORD = os.getenv('MAIL_PASSWORD', 'MAIL_PASSWORD')
    MAIL_DEFAULT_SENDER = ('izNiSa Store Support', 'MAIL_EMAIL')

    #SQLAlchemy configurations
    SQLALCHEMY_DATABASE_URI = os.getenv('DATABASE_URL')
    SQLALCHEMY_TRACK_MODIFICATIONS = False

    #STRIPE configurations
    stripe.api_key = os.getenv('STRIPE_API_KEY')
    STRIPE_PK = os.getenv('STRIPE_PUBLIC_KEY')

    # Loggings configurations
    handler = RotatingFileHandler('login_attempts.log', maxBytes=10000, backupCount=1)
    handler.setLevel(logging.INFO)  # You can adjust the level to DEBUG, INFO, WARNING, ERROR, etc.

    formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
    handler.setFormatter(formatter)

    LOGGING_HANDLER = handler