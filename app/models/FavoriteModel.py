""" 
    Sample Model File

    A Model should be in charge of communicating with the Database. 
    Define specific model method that query the database for information.
    Then call upon these model method in your controller.

    Create a model using this template.
"""
from system.core.model import Model
import re

class FavoriteModel(Model):
    def __init__(self):
        super(FavoriteModel, self).__init__()
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
    def favoritecreate (self,info):
        query = "INSERT into favorites (user_id, quote_id) Values (:user_id, :quote_id)"
        data = {'user_id':info ['user'], 'quote_id':info['quote']}
        return self.db.query_db(query, data)

    def favoritedelete (self, info):
        query = "DELETE from favorites where quote_id = :quoteid and user_id = :userid"
        data = {'quoteid':info['quote'], 'userid':info['user']}
        return self.db.query_db(query,data)
    
    
