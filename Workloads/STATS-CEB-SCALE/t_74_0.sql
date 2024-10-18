SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 3
AND p.Score >= -9
AND p.ViewCount >= 1203.0
AND p.ViewCount <= 1810.0
AND p.AnswerCount <= 1.0
AND p.CommentCount >= 3
AND p.CommentCount <= 22
AND u.Reputation <= 26
AND u.DownVotes <= 1
AND c.CreationDate <= 1292
AND p.CreationDate >= 880

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;