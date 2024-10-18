SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 4.0
AND p.AnswerCount <= 56.0
AND p.CommentCount >= 5
AND p.CommentCount <= 8
AND u.Reputation >= 486
AND c.CreationDate >= 160
AND p.CreationDate >= 664
AND p.CreationDate <= 1091
AND u.CreationDate >= 850
AND u.CreationDate <= 1540

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;