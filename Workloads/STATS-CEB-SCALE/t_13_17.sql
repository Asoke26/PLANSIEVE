SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 50.0
AND u.UpVotes = 37
AND c.CreationDate >= 460
AND c.CreationDate <= 890
AND u.CreationDate <= 1423

AND u.Id = c.UserId
AND u.Id = v.UserId;