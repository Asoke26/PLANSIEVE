SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 4
AND p.Score >= 3
AND p.Score <= 63
AND p.ViewCount >= 709.0
AND p.ViewCount <= 1979.0
AND p.AnswerCount <= 136.0
AND p.CommentCount <= 37
AND u.DownVotes <= 3
AND u.UpVotes >= 83
AND u.CreationDate >= 416
AND u.CreationDate <= 1256

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;