SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 0
AND p.Score >= -2
AND p.Score <= 42
AND p.ViewCount >= 873.0
AND p.ViewCount <= 8602.0
AND p.AnswerCount <= 26.0
AND p.CommentCount <= 6
AND u.DownVotes <= 43
AND u.UpVotes >= 1316
AND u.CreationDate >= 80
AND u.CreationDate <= 740

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;