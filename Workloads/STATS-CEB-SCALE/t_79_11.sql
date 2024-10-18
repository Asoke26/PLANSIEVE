SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 0.0
AND p.AnswerCount <= 18.0
AND p.CommentCount >= 10
AND p.CommentCount <= 32
AND u.Reputation >= 106
AND c.CreationDate >= 172
AND p.CreationDate >= 1000
AND p.CreationDate <= 1265
AND u.CreationDate >= 715
AND u.CreationDate <= 1217

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;