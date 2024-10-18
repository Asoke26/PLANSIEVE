SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 0.0
AND p.AnswerCount <= 21.0
AND p.CommentCount >= 9
AND p.CommentCount <= 14
AND u.Reputation >= 230
AND c.CreationDate >= 924
AND p.CreationDate >= 387
AND p.CreationDate <= 1474
AND u.CreationDate >= 1045
AND u.CreationDate <= 1376

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;