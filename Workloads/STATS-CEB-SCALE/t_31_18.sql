SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 75
AND u.Views <= 203
AND u.DownVotes >= 2
AND u.DownVotes <= 44
AND u.UpVotes <= 202
AND c.CreationDate >= 363
AND c.CreationDate <= 1526
AND ph.CreationDate >= 267
AND ph.CreationDate <= 457
AND v.CreationDate >= 188
AND v.CreationDate <= 1096

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;