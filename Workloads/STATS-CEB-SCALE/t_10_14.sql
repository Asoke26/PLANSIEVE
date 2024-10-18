SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 8
AND p.Score >= 9
AND p.Score <= 38
AND p.ViewCount >= 108.0
AND p.ViewCount <= 8833.0
AND p.AnswerCount <= 3.0
AND p.CommentCount <= 33
AND u.DownVotes <= 4
AND u.UpVotes >= 55
AND u.CreationDate >= 134
AND u.CreationDate <= 209

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;