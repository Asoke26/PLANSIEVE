SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 2.0
AND p.AnswerCount <= 35.0
AND p.CommentCount >= 8
AND p.CommentCount <= 28
AND u.Reputation >= 1253
AND c.CreationDate >= 1522
AND p.CreationDate >= 676
AND p.CreationDate <= 1510
AND u.CreationDate >= 1453
AND u.CreationDate <= 1529

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;