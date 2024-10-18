SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 20
AND p.AnswerCount <= 3.0
AND p.CommentCount >= 2
AND p.CommentCount <= 4
AND p.FavoriteCount <= 4.0
AND u.Reputation >= 735

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;