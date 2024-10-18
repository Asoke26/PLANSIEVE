SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount>=0
AND p.AnswerCount<=4
AND p.CommentCount>=0
AND p.CommentCount<=11
AND u.Reputation>=1
AND c.CreationDate>=35
AND p.CreationDate>=34
AND p.CreationDate<=1544
AND u.CreationDate>=42
AND u.CreationDate<=1543

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;