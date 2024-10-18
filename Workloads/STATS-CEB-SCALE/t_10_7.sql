SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 2
AND p.Score >= -10
AND p.Score <= 34
AND p.ViewCount >= 1731.0
AND p.ViewCount <= 3375.0
AND p.AnswerCount <= 21.0
AND p.CommentCount <= 21
AND u.DownVotes <= 36
AND u.UpVotes >= 3
AND u.CreationDate >= 731
AND u.CreationDate <= 956

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;