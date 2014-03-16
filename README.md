BusIt
========================
(Soon to be) the hit sensation striking Muni buses near you!

API
--------------------
* `GET /buses` – Returns a list of buses near you. Optionally pass parameters
  `near[lat]=[...]` and `lear[lon]=[...]` to receive a sorted list.
* `GET /buses/:id/check_ins` – Returns a list of the last 10 check-ins for that
  bus.
* `POST /buses/:id/check_ins` – Create a check-in for that bus.
* `POST /users` – Pass in three fields: email, name, and access_token
