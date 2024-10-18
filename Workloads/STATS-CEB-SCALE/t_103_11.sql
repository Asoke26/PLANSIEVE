SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 35
AND u.UpVotes >= 314
AND u.UpVotes <= 733
AND ph.CreationDate >= 408
AND ph.CreationDate <= 523

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;