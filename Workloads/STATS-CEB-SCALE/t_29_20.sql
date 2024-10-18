SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 8
AND p.Score <= 20
AND p.CommentCount = 5
AND p.CreationDate >= 599
AND p.CreationDate <= 723

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;