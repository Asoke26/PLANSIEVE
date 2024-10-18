SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 25
AND p.Score <= 156
AND p.CommentCount = 9
AND p.CreationDate >= 77
AND p.CreationDate <= 1465

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;