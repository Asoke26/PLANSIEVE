SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 2.0
AND p.AnswerCount <= 13.0
AND p.CommentCount >= 4
AND p.CommentCount <= 6
AND u.Reputation >= 243
AND c.CreationDate >= 105
AND p.CreationDate >= 464
AND p.CreationDate <= 1525
AND u.CreationDate >= 504
AND u.CreationDate <= 992

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;