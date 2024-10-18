SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= -8
AND p.Score <= 17
AND p.CommentCount = 20
AND p.CreationDate >= 152
AND p.CreationDate <= 1408

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;