SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 12
AND p.Score >= 15
AND p.Score <= 184
AND p.CommentCount <= 32
AND u.DownVotes >= 34
AND c.CreationDate <= 292
AND p.CreationDate <= 1244
AND v.CreationDate <= 547

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;