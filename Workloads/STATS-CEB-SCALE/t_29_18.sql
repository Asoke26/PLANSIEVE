SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 51
AND p.Score <= 121
AND p.CommentCount = 12
AND p.CreationDate >= 30
AND p.CreationDate <= 834

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;