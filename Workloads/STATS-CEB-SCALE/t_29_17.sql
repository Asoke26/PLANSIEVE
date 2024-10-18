SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 33
AND p.Score <= 128
AND p.CommentCount = 20
AND p.CreationDate >= 123
AND p.CreationDate <= 1121

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;