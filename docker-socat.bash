docker run -d --name socat -v /var/run/docker.sock:/var/run/docker.sock -p 2375:2375 alpine/socat tcp-listen:2375,fork,reuseaddr unix-connect:/var/run/docker.sock