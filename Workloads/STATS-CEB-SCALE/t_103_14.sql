SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 1
AND u.UpVotes >= 52
AND u.UpVotes <= 91
AND ph.CreationDate >= 977
AND ph.CreationDate <= 1415

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;