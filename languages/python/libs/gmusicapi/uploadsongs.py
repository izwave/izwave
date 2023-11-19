from gmusicapi import Musicmanager

api = Musicmanager() # mode Manager
api.login(oauth_credentials="oauth.cred") # login 
result = api.upload("./songs/live.mp3", True) # upload
print(result)
