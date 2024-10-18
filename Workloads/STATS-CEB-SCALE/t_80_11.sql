SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 19
AND p.AnswerCount <= 2.0
AND p.CommentCount >= 8
AND p.CommentCount <= 16
AND p.FavoriteCount <= 55.0
AND u.Reputation >= 376

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;