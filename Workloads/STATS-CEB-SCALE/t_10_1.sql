SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 7
AND p.Score >= 4
AND p.Score <= 17
AND p.ViewCount >= 161.0
AND p.ViewCount <= 2352.0
AND p.AnswerCount <= 6.0
AND p.CommentCount <= 32
AND u.DownVotes <= 145
AND u.UpVotes >= 218
AND u.CreationDate >= 655
AND u.CreationDate <= 1452

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;