SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 3
AND p.Score <= 35
AND p.CommentCount = 28
AND p.CreationDate >= 847
AND p.CreationDate <= 1355

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;