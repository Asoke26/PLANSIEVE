SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 1.0
AND p.AnswerCount <= 2.0
AND p.CommentCount >= 16
AND p.CommentCount <= 17
AND u.Reputation >= 650
AND c.CreationDate >= 779
AND p.CreationDate >= 560
AND p.CreationDate <= 931
AND u.CreationDate >= 334
AND u.CreationDate <= 1150

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;