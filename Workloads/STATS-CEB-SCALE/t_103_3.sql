SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 23
AND u.UpVotes >= 63
AND u.UpVotes <= 134
AND ph.CreationDate >= 1229
AND ph.CreationDate <= 1475

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;