SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 58
AND p.Score <= 89
AND p.CommentCount = 6
AND p.CreationDate >= 188
AND p.CreationDate <= 1510

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;