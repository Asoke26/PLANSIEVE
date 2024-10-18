SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 43

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;