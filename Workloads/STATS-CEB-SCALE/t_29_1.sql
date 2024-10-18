SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 8
AND p.Score <= 30
AND p.CommentCount = 9
AND p.CreationDate >= 1392
AND p.CreationDate <= 1503

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;