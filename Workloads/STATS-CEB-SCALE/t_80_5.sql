SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 1
AND p.AnswerCount <= 19.0
AND p.CommentCount >= 6
AND p.CommentCount <= 35
AND p.FavoriteCount <= 22.0
AND u.Reputation >= 347

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;