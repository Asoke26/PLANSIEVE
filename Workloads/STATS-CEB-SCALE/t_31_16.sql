SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 1040
AND u.Views <= 20932
AND u.DownVotes >= 2
AND u.DownVotes <= 14
AND u.UpVotes <= 352
AND c.CreationDate >= 558
AND c.CreationDate <= 1366
AND ph.CreationDate >= 128
AND ph.CreationDate <= 1397
AND v.CreationDate >= 248
AND v.CreationDate <= 1369

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;