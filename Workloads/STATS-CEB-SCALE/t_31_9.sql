SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 85
AND u.Views <= 500
AND u.DownVotes >= 42
AND u.DownVotes <= 200
AND u.UpVotes <= 283
AND c.CreationDate >= 787
AND c.CreationDate <= 1228
AND ph.CreationDate >= 454
AND ph.CreationDate <= 606
AND v.CreationDate >= 554
AND v.CreationDate <= 975

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;