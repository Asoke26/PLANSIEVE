SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 3.0
AND p.AnswerCount <= 19.0
AND p.CommentCount >= 7
AND p.CommentCount <= 8
AND u.Reputation >= 358
AND c.CreationDate >= 480
AND p.CreationDate >= 394
AND p.CreationDate <= 940
AND u.CreationDate >= 578
AND u.CreationDate <= 915

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;