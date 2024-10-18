SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 0
AND p.Score >= 7
AND p.Score <= 32
AND p.ViewCount >= 52.0
AND p.ViewCount <= 1793.0
AND p.AnswerCount <= 136.0
AND p.CommentCount <= 32
AND u.DownVotes <= 39
AND u.UpVotes >= 109
AND u.CreationDate >= 252
AND u.CreationDate <= 1212

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;