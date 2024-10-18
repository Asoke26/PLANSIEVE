SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 28
AND p.AnswerCount <= 26.0
AND p.CommentCount >= 5
AND p.CommentCount <= 31
AND p.FavoriteCount <= 26.0
AND u.Reputation >= 7972

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;