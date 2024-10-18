SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 400.0
AND u.UpVotes = 69
AND c.CreationDate >= 1402
AND c.CreationDate <= 1534
AND u.CreationDate <= 1528

AND u.Id = c.UserId
AND u.Id = v.UserId;