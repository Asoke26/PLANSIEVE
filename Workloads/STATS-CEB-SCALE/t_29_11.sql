SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= -2
AND p.Score <= 45
AND p.CommentCount = 13
AND p.CreationDate >= 569
AND p.CreationDate <= 1165

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;