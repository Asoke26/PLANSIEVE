SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 60
AND p.Score <= 184
AND p.ViewCount >= 1854.0
AND p.ViewCount <= 2055.0

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;