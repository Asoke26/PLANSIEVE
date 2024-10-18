SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 16.0
AND p.AnswerCount <= 21.0
AND p.CommentCount >= 0
AND p.CommentCount <= 27
AND u.Reputation >= 251
AND c.CreationDate >= 72
AND p.CreationDate >= 660
AND p.CreationDate <= 1023
AND u.CreationDate >= 223
AND u.CreationDate <= 1184

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;