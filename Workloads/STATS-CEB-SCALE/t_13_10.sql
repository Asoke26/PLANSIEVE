SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 75.0
AND u.UpVotes = 2319
AND c.CreationDate >= 1065
AND c.CreationDate <= 1139
AND u.CreationDate <= 1224

AND u.Id = c.UserId
AND u.Id = v.UserId;