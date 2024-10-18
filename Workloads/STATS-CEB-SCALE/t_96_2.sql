SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 2
AND p.Score <= 105
AND p.ViewCount >= 6464.0
AND p.ViewCount <= 19571.0

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;