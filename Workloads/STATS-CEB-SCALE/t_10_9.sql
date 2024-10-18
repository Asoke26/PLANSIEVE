SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 13
AND p.Score >= 2
AND p.Score <= 64
AND p.ViewCount >= 351.0
AND p.ViewCount <= 2036.0
AND p.AnswerCount <= 11.0
AND p.CommentCount <= 5
AND u.DownVotes <= 131
AND u.UpVotes >= 218
AND u.CreationDate >= 80
AND u.CreationDate <= 500

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;