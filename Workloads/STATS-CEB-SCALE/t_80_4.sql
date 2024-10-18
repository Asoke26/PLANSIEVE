SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 2
AND p.AnswerCount <= 13.0
AND p.CommentCount >= 9
AND p.CommentCount <= 10
AND p.FavoriteCount <= 25.0
AND u.Reputation >= 182

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;