SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 15
AND u.UpVotes >= 439
AND u.UpVotes <= 3274
AND ph.CreationDate >= 525
AND ph.CreationDate <= 1499

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;