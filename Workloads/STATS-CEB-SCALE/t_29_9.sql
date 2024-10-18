SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= -3
AND p.Score <= 184
AND p.CommentCount = 8
AND p.CreationDate >= 1264
AND p.CreationDate <= 1314

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;