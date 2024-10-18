SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score=0
AND p.AnswerCount<=5
AND p.CommentCount>=0
AND p.CommentCount<=11
AND p.FavoriteCount<=27
AND u.Reputation>=1

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;