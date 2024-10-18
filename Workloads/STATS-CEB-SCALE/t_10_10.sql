SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 9
AND p.Score >= 19
AND p.Score <= 57
AND p.ViewCount >= 247.0
AND p.ViewCount <= 14855.0
AND p.AnswerCount <= 56.0
AND p.CommentCount <= 32
AND u.DownVotes <= 60
AND u.UpVotes >= 489
AND u.CreationDate >= 38
AND u.CreationDate <= 1497

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;