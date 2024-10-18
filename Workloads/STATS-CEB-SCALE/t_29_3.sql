SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= -5
AND p.Score <= 88
AND p.CommentCount = 16
AND p.CreationDate >= 36
AND p.CreationDate <= 1210

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;