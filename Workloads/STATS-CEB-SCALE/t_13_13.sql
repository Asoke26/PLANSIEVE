SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 150.0
AND u.UpVotes = 149
AND c.CreationDate >= 87
AND c.CreationDate <= 340
AND u.CreationDate <= 353

AND u.Id = c.UserId
AND u.Id = v.UserId;