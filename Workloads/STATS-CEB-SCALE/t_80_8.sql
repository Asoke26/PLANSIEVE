SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 15
AND p.AnswerCount <= 19.0
AND p.CommentCount >= 0
AND p.CommentCount <= 41
AND p.FavoriteCount <= 41.0
AND u.Reputation >= 68

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;