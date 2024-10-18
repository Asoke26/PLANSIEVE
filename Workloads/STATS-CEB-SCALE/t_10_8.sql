SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 21
AND p.Score >= 39
AND p.Score <= 75
AND p.ViewCount >= 1848.0
AND p.ViewCount <= 3922.0
AND p.AnswerCount <= 24.0
AND p.CommentCount <= 27
AND u.DownVotes <= 19
AND u.UpVotes >= 218
AND u.CreationDate >= 218
AND u.CreationDate <= 827

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;