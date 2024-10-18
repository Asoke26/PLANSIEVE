SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 5.0
AND p.AnswerCount <= 56.0
AND p.CommentCount >= 0
AND p.CommentCount <= 19
AND u.Reputation >= 391
AND c.CreationDate >= 98
AND p.CreationDate >= 554
AND p.CreationDate <= 985
AND u.CreationDate >= 434
AND u.CreationDate <= 799

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;