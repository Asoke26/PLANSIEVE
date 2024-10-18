SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 163
AND u.UpVotes >= 1
AND u.UpVotes <= 5
AND ph.CreationDate >= 1263
AND ph.CreationDate <= 1273

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;