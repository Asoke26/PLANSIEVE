SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 4
AND v.BountyAmount <= 500.0
AND u.UpVotes >= 123
AND u.UpVotes <= 355
AND c.CreationDate <= 591
AND p.CreationDate >= 103
AND v.CreationDate <= 1253
AND u.CreationDate >= 215

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;