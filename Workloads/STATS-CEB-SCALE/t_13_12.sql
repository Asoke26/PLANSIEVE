SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 200.0
AND u.UpVotes = 76
AND c.CreationDate >= 158
AND c.CreationDate <= 1183
AND u.CreationDate <= 633

AND u.Id = c.UserId
AND u.Id = v.UserId;