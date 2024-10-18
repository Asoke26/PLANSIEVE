SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 3
AND p.Score >= -1
AND p.Score <= 84
AND p.ViewCount >= 439.0
AND p.ViewCount <= 1461.0
AND p.AnswerCount <= 42.0
AND p.CommentCount <= 22
AND u.DownVotes <= 59
AND u.UpVotes >= 360
AND u.CreationDate >= 501
AND u.CreationDate <= 520

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;