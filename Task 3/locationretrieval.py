###Import necessary Importables
import requests

class RequestError(Exception):
    pass
    
###Class definition
class LocationRetrieval():

    ##Necessary Constructor
    def __init__(self,ssl_valid=False)->None:
        self.ssl_valid=ssl_valid
        

    def do_get(self,url):
        try:
            response = requests.get(url,verify=self.ssl_valid)
            ###Exception handing in case status code not equal 200 (Success)
            if response.status_code != 200:
                raise RequestError("Request Ended with "+str(response.status_code)+". Error: "+str(response.reason))
            
            return response.json()
        except requests.exceptions.RequestException as e:
            ###Exception handling in case of any invalid URL exception
                raise RequestError("Exception in processing the request. Error: "+str(e)) from e

try:
    url="https://ipapi.co/json"
    ###Retrieving Information
    response=LocationRetrieval(ssl_valid=True).do_get(url) 
    ###Parsing the response and displaying
    print("IP: "+str(response.get('ip'))+", City: "+str(response.get('city'))+", Region: "+str(response.get('region'))+", Country: "+str(response.get('country'))+", Time Zone: "+str(response.get('timezone')))
except Exception as exp:
    print(exp)  
