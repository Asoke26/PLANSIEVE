SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 150.0
AND u.UpVotes = 857
AND c.CreationDate >= 183
AND c.CreationDate <= 1489
AND u.CreationDate <= 976

AND u.Id = c.UserId
AND u.Id = v.UserId;