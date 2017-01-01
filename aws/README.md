# Run Following commands when local site is ready

```
      sudo mv www.example.com /etc/nginx/sites-available/
      sudo ln -fs /etc/nginx/sites-available/www.example.com /etc/nginx/sites-enabled/
      sudo service nginx restart
  
```