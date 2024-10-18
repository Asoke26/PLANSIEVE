SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= -9
AND p.Score <= 86
AND p.CommentCount = 35
AND p.CreationDate >= 163
AND p.CreationDate <= 811

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;