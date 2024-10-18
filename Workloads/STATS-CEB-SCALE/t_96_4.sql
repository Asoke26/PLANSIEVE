SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 67
AND p.Score <= 90
AND p.ViewCount >= 1050.0
AND p.ViewCount <= 9741.0

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;