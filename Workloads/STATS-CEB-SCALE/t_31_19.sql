SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 47
AND u.Views <= 272
AND u.DownVotes >= 18
AND u.DownVotes <= 131
AND u.UpVotes <= 186
AND c.CreationDate >= 1082
AND c.CreationDate <= 1404
AND ph.CreationDate >= 1286
AND ph.CreationDate <= 1356
AND v.CreationDate >= 76
AND v.CreationDate <= 1245

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;