SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= -13
AND p.Score <= 68
AND p.CommentCount = 9
AND p.CreationDate >= 1086
AND p.CreationDate <= 1537

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;