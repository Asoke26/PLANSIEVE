SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 18
AND p.Score <= 52
AND p.CommentCount = 4
AND p.CreationDate >= 23
AND p.CreationDate <= 1138

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;