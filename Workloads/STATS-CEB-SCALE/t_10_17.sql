SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 21
AND p.Score >= -10
AND p.Score <= 16
AND p.ViewCount >= 361.0
AND p.ViewCount <= 9741.0
AND p.AnswerCount <= 19.0
AND p.CommentCount <= 1
AND u.DownVotes <= 27
AND u.UpVotes >= 32
AND u.CreationDate >= 233
AND u.CreationDate <= 442

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;