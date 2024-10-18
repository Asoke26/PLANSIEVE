SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 1
AND p.Score >= 31
AND p.Score <= 58
AND p.ViewCount >= 151.0
AND p.ViewCount <= 3418.0
AND p.AnswerCount <= 19.0
AND p.CommentCount <= 35
AND u.DownVotes <= 3
AND u.UpVotes >= 25
AND u.CreationDate >= 747
AND u.CreationDate <= 1022

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;