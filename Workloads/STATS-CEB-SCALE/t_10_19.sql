SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 7
AND p.Score >= -13
AND p.Score <= 27
AND p.ViewCount >= 267.0
AND p.ViewCount <= 4578.0
AND p.AnswerCount <= 35.0
AND p.CommentCount <= 11
AND u.DownVotes <= 82
AND u.UpVotes >= 883
AND u.CreationDate >= 336
AND u.CreationDate <= 1484

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;