SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 36
AND u.Views <= 153
AND u.DownVotes >= 12
AND u.DownVotes <= 16
AND u.UpVotes <= 401
AND c.CreationDate >= 368
AND c.CreationDate <= 1201
AND ph.CreationDate >= 52
AND ph.CreationDate <= 870
AND v.CreationDate >= 796
AND v.CreationDate <= 1200

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;