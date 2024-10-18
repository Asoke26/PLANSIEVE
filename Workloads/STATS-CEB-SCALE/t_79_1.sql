SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 7.0
AND p.AnswerCount <= 25.0
AND p.CommentCount >= 3
AND p.CommentCount <= 27
AND u.Reputation >= 411
AND c.CreationDate >= 93
AND p.CreationDate >= 48
AND p.CreationDate <= 1373
AND u.CreationDate >= 324
AND u.CreationDate <= 373

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;