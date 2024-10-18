SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 5.0
AND p.AnswerCount <= 136.0
AND p.CommentCount >= 2
AND p.CommentCount <= 22
AND u.Reputation >= 2182
AND c.CreationDate >= 1051
AND p.CreationDate >= 572
AND p.CreationDate <= 1070
AND u.CreationDate >= 100
AND u.CreationDate <= 757

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;