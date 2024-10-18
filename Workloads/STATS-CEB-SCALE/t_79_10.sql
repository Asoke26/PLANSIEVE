SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 1.0
AND p.AnswerCount <= 26.0
AND p.CommentCount >= 12
AND p.CommentCount <= 20
AND u.Reputation >= 1917
AND c.CreationDate >= 1302
AND p.CreationDate >= 532
AND p.CreationDate <= 784
AND u.CreationDate >= 411
AND u.CreationDate <= 942

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;