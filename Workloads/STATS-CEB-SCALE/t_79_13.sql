SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 0.0
AND p.AnswerCount <= 3.0
AND p.CommentCount >= 11
AND p.CommentCount <= 34
AND u.Reputation >= 789
AND c.CreationDate >= 1072
AND p.CreationDate >= 608
AND p.CreationDate <= 1197
AND u.CreationDate >= 669
AND u.CreationDate <= 1119

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;