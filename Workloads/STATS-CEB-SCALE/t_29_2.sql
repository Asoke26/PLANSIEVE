SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 21
AND p.Score <= 28
AND p.CommentCount = 8
AND p.CreationDate >= 734
AND p.CreationDate <= 879

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;