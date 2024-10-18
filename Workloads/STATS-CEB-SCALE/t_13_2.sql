SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 75.0
AND u.UpVotes = 2317
AND c.CreationDate >= 982
AND c.CreationDate <= 1199
AND u.CreationDate <= 1081

AND u.Id = c.UserId
AND u.Id = v.UserId;