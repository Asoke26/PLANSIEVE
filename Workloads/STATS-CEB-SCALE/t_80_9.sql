SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 7
AND p.AnswerCount <= 18.0
AND p.CommentCount >= 2
AND p.CommentCount <= 29
AND p.FavoriteCount <= 42.0
AND u.Reputation >= 9604

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;