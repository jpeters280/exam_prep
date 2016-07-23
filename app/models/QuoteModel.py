""" 
    Sample Model File

    A Model should be in charge of communicating with the Database. 
    Define specific model method that query the database for information.
    Then call upon these model method in your controller.

    Create a model using this template.
"""
from system.core.model import Model
import re

class QuoteModel(Model):
    def __init__(self):
        super(QuoteModel, self).__init__()
    """
    Below is an example of a model method that queries the database for all users in a fictitious application
    
    Every model has access to the "self.db.query_db" method which allows you to interact with the database

    def get_users(self):
        query = "SELECT * from users"
        return self.db.query_db(query)

    def get_user(self):
        query = "SELECT * from users where id = :id"
        data = {'id': 1}
        return self.db.get_one(query, data)

    def add_message(self):
        sql = "INSERT into messages (message, created_at, users_id) values(:message, NOW(), :users_id)"
        data = {'message': 'awesome bro', 'users_id': 1}
        self.db.query_db(sql, data)
        return True
    
    def grab_messages(self):
        query = "SELECT * from messages where users_id = :user_id"
        data = {'user_id':1}
        return self.db.query_db(query, data)

    """
    
    def favorites(self,id):
        query = "SELECT quotes.id, quote_by, content, alias, quotes.user_id  from quotes join users on users.id = quotes.user_id Join favorites on quotes.id = favorites.quote_id where favorites.user_id = :id order by quotes.id desc"
        data = {'id':id}
        return self.db.query_db(query, data)

    def unfavorites(self,id):
        query = "SELECT quotes.id, quote_by, content, alias, quotes.user_id  from quotes join users on users.id = quotes.user_id left Join favorites on quotes.id = favorites.quote_id and favorites.user_id = :id  where favorites.user_id  is null"
        data = {'id':id}
        return self.db.query_db(query, data)

    def quoteadd(self, info):
        query = "INSERT into quotes (quote_by, content, user_id) Values (:quote_by, :content, :user_id)"
        data = {'user_id':info ['id'], 'quote_by':info['author'], 'content':info['content']}
        return self.db.query_db(query, data)

