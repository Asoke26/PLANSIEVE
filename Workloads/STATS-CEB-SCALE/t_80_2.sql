SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 23
AND p.AnswerCount <= 19.0
AND p.CommentCount >= 5
AND p.CommentCount <= 14
AND p.FavoriteCount <= 43.0
AND u.Reputation >= 306

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;