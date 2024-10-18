SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 16
AND p.Score <= 85
AND p.CommentCount = 9
AND p.CreationDate >= 175
AND p.CreationDate <= 876

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;