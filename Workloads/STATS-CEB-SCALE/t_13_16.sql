SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 150.0
AND u.UpVotes = 662
AND c.CreationDate >= 31
AND c.CreationDate <= 1224
AND u.CreationDate <= 1524

AND u.Id = c.UserId
AND u.Id = v.UserId;