SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 5
AND p.Score >= 10
AND p.Score <= 184
AND p.ViewCount >= 260.0
AND p.ViewCount <= 2291.0
AND p.AnswerCount <= 16.0
AND p.CommentCount <= 5
AND u.DownVotes <= 22
AND u.UpVotes >= 144
AND u.CreationDate >= 131
AND u.CreationDate <= 237

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;