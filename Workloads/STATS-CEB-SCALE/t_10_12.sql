SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 17
AND p.Score >= -9
AND p.Score <= 140
AND p.ViewCount >= 1965.0
AND p.ViewCount <= 13244.0
AND p.AnswerCount <= 42.0
AND p.CommentCount <= 12
AND u.DownVotes <= 21
AND u.UpVotes >= 146
AND u.CreationDate >= 87
AND u.CreationDate <= 962

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;