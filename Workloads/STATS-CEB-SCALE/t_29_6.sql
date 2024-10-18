SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= -4
AND p.Score <= 87
AND p.CommentCount = 24
AND p.CreationDate >= 907
AND p.CreationDate <= 1160

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;