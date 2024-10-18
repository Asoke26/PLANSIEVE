SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 6
AND p.Score >= -19
AND p.Score <= 129
AND p.ViewCount >= 129.0
AND p.ViewCount <= 53644.0
AND p.AnswerCount <= 11.0
AND p.CommentCount <= 18
AND u.DownVotes <= 31
AND u.UpVotes >= 55
AND u.CreationDate >= 127
AND u.CreationDate <= 1073

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;