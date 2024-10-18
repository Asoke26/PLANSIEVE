SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 5.0
AND p.AnswerCount <= 25.0
AND p.CommentCount >= 2
AND p.CommentCount <= 3
AND u.Reputation >= 1895
AND c.CreationDate >= 401
AND p.CreationDate >= 758
AND p.CreationDate <= 1492
AND u.CreationDate >= 67
AND u.CreationDate <= 698

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;