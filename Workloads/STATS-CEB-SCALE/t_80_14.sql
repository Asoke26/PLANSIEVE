SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 25
AND p.AnswerCount <= 10.0
AND p.CommentCount >= 0
AND p.CommentCount <= 21
AND p.FavoriteCount <= 41.0
AND u.Reputation >= 893

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;