SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 12
AND p.Score >= 8
AND p.Score <= 50
AND p.ViewCount >= 635.0
AND p.ViewCount <= 2375.0
AND p.AnswerCount <= 28.0
AND p.CommentCount <= 9
AND u.DownVotes <= 54
AND u.UpVotes >= 339
AND u.CreationDate >= 36
AND u.CreationDate <= 1527

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;