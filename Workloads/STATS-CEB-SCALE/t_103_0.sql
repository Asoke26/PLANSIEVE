SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 25
AND u.UpVotes >= 95
AND u.UpVotes <= 2317
AND ph.CreationDate >= 134
AND ph.CreationDate <= 652

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;