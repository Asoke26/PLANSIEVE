SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 4.0
AND p.AnswerCount <= 14.0
AND p.CommentCount >= 10
AND p.CommentCount <= 27
AND u.Reputation >= 529
AND c.CreationDate >= 1486
AND p.CreationDate >= 917
AND p.CreationDate <= 1412
AND u.CreationDate >= 1179
AND u.CreationDate <= 1523

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;