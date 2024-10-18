SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 26
AND p.Score <= 90
AND p.CommentCount = 5
AND p.CreationDate >= 974
AND p.CreationDate <= 1047

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;