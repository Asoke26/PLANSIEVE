SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 6.0
AND p.AnswerCount <= 13.0
AND p.CommentCount >= 2
AND p.CommentCount <= 34
AND u.Reputation >= 325
AND c.CreationDate >= 765
AND p.CreationDate >= 475
AND p.CreationDate <= 1502
AND u.CreationDate >= 59
AND u.CreationDate <= 521

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;