SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 139
AND u.Views <= 363
AND u.DownVotes >= 4
AND u.DownVotes <= 200
AND u.UpVotes <= 37
AND c.CreationDate >= 211
AND c.CreationDate <= 738
AND ph.CreationDate >= 218
AND ph.CreationDate <= 1429
AND v.CreationDate >= 587
AND v.CreationDate <= 1274

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;