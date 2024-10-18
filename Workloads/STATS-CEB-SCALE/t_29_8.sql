SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= 1
AND p.Score <= 86
AND p.CommentCount = 17
AND p.CreationDate >= 494
AND p.CreationDate <= 789

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;