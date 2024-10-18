SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 40

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;