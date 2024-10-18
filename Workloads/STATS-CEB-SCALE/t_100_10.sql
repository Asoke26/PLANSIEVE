SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 7
AND p.Score >= 17
AND p.Score <= 38
AND p.CommentCount <= 28
AND u.DownVotes >= 143
AND c.CreationDate <= 922
AND p.CreationDate <= 210
AND v.CreationDate <= 632

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;