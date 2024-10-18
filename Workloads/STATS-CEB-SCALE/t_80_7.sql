SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 14
AND p.AnswerCount <= 16.0
AND p.CommentCount >= 4
AND p.CommentCount <= 13
AND p.FavoriteCount <= 71.0
AND u.Reputation >= 615

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;