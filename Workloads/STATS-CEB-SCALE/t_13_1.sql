SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 250.0
AND u.UpVotes = 3
AND c.CreationDate >= 187
AND c.CreationDate <= 398
AND u.CreationDate <= 477

AND u.Id = c.UserId
AND u.Id = v.UserId;