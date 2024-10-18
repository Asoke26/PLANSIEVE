SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 40
AND v.BountyAmount <= 150.0

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;