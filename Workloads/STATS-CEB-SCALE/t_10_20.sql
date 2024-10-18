SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 11
AND p.Score >= 6
AND p.Score <= 95
AND p.ViewCount >= 1638.0
AND p.ViewCount <= 3663.0
AND p.AnswerCount <= 42.0
AND p.CommentCount <= 29
AND u.DownVotes <= 3
AND u.UpVotes >= 105
AND u.CreationDate >= 78
AND u.CreationDate <= 1493

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;