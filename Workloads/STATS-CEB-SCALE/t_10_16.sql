SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 1
AND p.Score >= 19
AND p.Score <= 46
AND p.ViewCount >= 3392.0
AND p.ViewCount <= 4454.0
AND p.AnswerCount <= 27.0
AND p.CommentCount <= 10
AND u.DownVotes <= 4
AND u.UpVotes >= 18
AND u.CreationDate >= 203
AND u.CreationDate <= 1375

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;