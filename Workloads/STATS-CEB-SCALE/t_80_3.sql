SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 3
AND p.AnswerCount <= 6.0
AND p.CommentCount >= 14
AND p.CommentCount <= 20
AND p.FavoriteCount <= 44.0
AND u.Reputation >= 1077

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;