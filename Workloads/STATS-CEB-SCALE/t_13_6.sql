SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 250.0
AND u.UpVotes = 55
AND c.CreationDate >= 141
AND c.CreationDate <= 1446
AND u.CreationDate <= 1499

AND u.Id = c.UserId
AND u.Id = v.UserId;