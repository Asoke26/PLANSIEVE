SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 72
AND u.Views <= 7357
AND u.DownVotes >= 88
AND u.DownVotes <= 110
AND u.UpVotes <= 229
AND c.CreationDate >= 822
AND c.CreationDate <= 1297
AND ph.CreationDate >= 471
AND ph.CreationDate <= 1328
AND v.CreationDate >= 105
AND v.CreationDate <= 1122

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;