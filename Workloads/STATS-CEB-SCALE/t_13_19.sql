SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 250.0
AND u.UpVotes = 17
AND c.CreationDate >= 511
AND c.CreationDate <= 788
AND u.CreationDate <= 1143

AND u.Id = c.UserId
AND u.Id = v.UserId;