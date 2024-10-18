SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 0.0
AND p.AnswerCount <= 12.0
AND p.CommentCount >= 2
AND p.CommentCount <= 20
AND u.Reputation >= 751
AND c.CreationDate >= 875
AND p.CreationDate >= 79
AND p.CreationDate <= 208
AND u.CreationDate >= 134
AND u.CreationDate <= 1529

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;