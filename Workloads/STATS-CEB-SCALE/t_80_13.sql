SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 26
AND p.AnswerCount <= 21.0
AND p.CommentCount >= 4
AND p.CommentCount <= 8
AND p.FavoriteCount <= 21.0
AND u.Reputation >= 687

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;