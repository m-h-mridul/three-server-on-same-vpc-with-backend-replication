# This task is provided by poridhi
 
## Let's say you have three servers on AWS. Two servers on public subnet and one on private subnet. You configured postgres on the server that is in the private subnet. And deployed nginx on a server of public subnet with Docker. Another server has two containers. One is the frontend container (React) and the other is the backend container (python or node).

Frontend: http://students.poridhi.com 
backend:  http://api.students.poridhi.com

## 1.  Write the nginx config so that when someone sends a request to this Frontend URL it goes to the frontend container. 

## 2. If you search this backend URL  it will go to the Backend container.

<p align=center>
    <img src="assets/3-subent.png" width="65%" height="65%">
</p>



