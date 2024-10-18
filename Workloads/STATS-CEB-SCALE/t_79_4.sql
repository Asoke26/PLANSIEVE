SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 3.0
AND p.AnswerCount <= 19.0
AND p.CommentCount >= 17
AND p.CommentCount <= 28
AND u.Reputation >= 210
AND c.CreationDate >= 1208
AND p.CreationDate >= 866
AND p.CreationDate <= 1369
AND u.CreationDate >= 186
AND u.CreationDate <= 1427

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;