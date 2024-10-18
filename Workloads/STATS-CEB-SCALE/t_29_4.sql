SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 7
AND p.Score <= 46
AND p.CommentCount = 1
AND p.CreationDate >= 462
AND p.CreationDate <= 1008

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;