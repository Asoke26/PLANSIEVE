SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score >= -3
AND p.Score <= 66
AND p.CommentCount = 24
AND p.CreationDate >= 1102
AND p.CreationDate <= 1245

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;